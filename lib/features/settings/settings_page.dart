import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:xbcodebase/app_constants.dart';
import 'package:xbcodebase/core/global_configuration.dart';
import 'package:xbcodebase/core/shared/core_providers.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final globalConfiguration =
        ref.watch<GlobalConfiguration>(globalConfigureProvider);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            stretch: true,
            pinned: true,
            backgroundColor: Theme.of(context).brightness == Brightness.light
                ? Theme.of(context).colorScheme.secondary
                : null,
            expandedHeight: MediaQuery.of(context).size.height / 4.5,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.settings,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 80,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Text(
                  AppLocalizations.of(context)!.theme,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                SwitchListTile(
                  value: globalConfiguration.appTheme.currentTheme ==
                      ThemeMode.dark,
                  onChanged: (value) {
                    ref.read(globalConfigureProvider.notifier).toggleTheme();
                  },
                  title: Text(
                    AppLocalizations.of(context)!.darkMode,
                  ),
                ),
                Text(
                  AppLocalizations.of(context)!.lang,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                ListTile(
                  title: Text(
                    AppLocalizations.of(context)!.lang,
                  ),
                  subtitle: Text(
                    AppLocalizations.of(context)!.langSub,
                  ),
                  onTap: () {},
                  trailing: DropdownButton(
                    value: globalConfiguration.locale.languageCode,
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                    underline: const SizedBox(),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        ref
                            .read(globalConfigureProvider.notifier)
                            .changeLocale(Locale(newValue, ''));
                      }
                    },
                    items: kAppLocale.keys
                        .toList()
                        .map<DropdownMenuItem<String>>((String key) {
                      return DropdownMenuItem<String>(
                        value: key,
                        child: Text(
                          kAppLocale[key]!,
                        ),
                      );
                    }).toList(),
                  ),
                  dense: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
