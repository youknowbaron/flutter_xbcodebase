import 'package:memorise_vocabulary/features/auth/notifiers/authentication_notifier.dart';

import '../../bridges.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue>(authenticationNotifierProvider, (previous, next) {
      next.maybeWhen(
        orElse: () {},
        data: (data) {
          if (data == true) {
            GoStep.login.go(context);
          }
        },
      );
    });
    final appSettings = ref.watch(appSettingsNotifierProvider);
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
                    $strings.settings,
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
                  $strings.theme,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                SwitchListTile(
                  value: appSettings.themeMode == ThemeMode.dark,
                  onChanged: (value) {
                    ref.read(appSettingsNotifierProvider.notifier).toggleTheme();
                  },
                  title: Text(
                    $strings.darkMode,
                  ),
                ),
                Text(
                  $strings.lang,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                ListTile(
                  title: Text(
                    $strings.lang,
                  ),
                  subtitle: Text(
                    $strings.langSub,
                  ),
                  onTap: () {},
                  trailing: DropdownButton(
                    value: appSettings.locale?.languageCode,
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                    underline: const SizedBox(),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        ref
                            .read(appSettingsNotifierProvider.notifier)
                            .changeLocale(Locale(newValue, ''));
                      }
                    },
                    items: kAppLocale.keys.toList().map<DropdownMenuItem<String>>((String key) {
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
                TextButton(
                  onPressed: () async {
                    await ref.read(authenticationNotifierProvider.notifier).logOut();
                  },
                  child: const Text('Log out'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
