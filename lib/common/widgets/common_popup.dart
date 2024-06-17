import 'package:memorise_vocabulary/bridges.dart';

enum PopupActionType { one, two }

class PopupContainer extends HookConsumerWidget {
  const PopupContainer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.widthPct = 0.9,
    this.dismissOnBarrier = true,
    this.dismissKeyboardOnTap = false,
  });

  final Widget child;
  final EdgeInsets padding;
  final double widthPct;
  final bool dismissOnBarrier;
  final bool dismissKeyboardOnTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: dismissOnBarrier ? Navigator.of(context).pop : null,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: GestureDetector(
            onTap: () {
              if (dismissKeyboardOnTap) {
                FocusManager.instance.primaryFocus?.unfocus();
              }
            },
            child: Container(
              width: context.widthPct(widthPct),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                color: context.colorScheme.background,
              ),
              padding: padding,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

class CommonPopup extends StatelessWidget {
  const CommonPopup({
    super.key,
    this.title,
    required this.message,
    this.negativeText,
    this.positiveText,
    this.extraWidget,
    this.isPositiveButtonEnabled = true,
    this.actionType = PopupActionType.two,
    this.dismissKeyboardOnTap = false,
    this.closeOnPositiveTapped,
    this.fittedMessage = false,
    this.onNegativeTapped,
    this.onPositiveTapped,
  });

  final String? title;
  final String message;
  final String? negativeText;
  final String? positiveText;
  final Widget? extraWidget;
  final bool isPositiveButtonEnabled;
  final PopupActionType actionType;
  final bool dismissKeyboardOnTap;
  final bool fittedMessage;
  final bool Function()? closeOnPositiveTapped;
  final VoidCallback? onNegativeTapped;
  final VoidCallback? onPositiveTapped;

  @override
  Widget build(BuildContext context) {
    Widget messageText = Text(
      message,
      textAlign: TextAlign.center,
    );
    if (fittedMessage) {
      messageText = FittedBox(child: messageText);
    }

    return PopupContainer(
      padding: const EdgeInsets.all(0),
      dismissKeyboardOnTap: dismissKeyboardOnTap,
      child: PaddedColumn(
        padding: const EdgeInsets.all(24),
        mainAxisSize: MainAxisSize.min,
        children: [
          title != null
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    title!,
                    style: $styles.title16,
                  ),
                )
              : const Height(16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: messageText,
          ),
          if (extraWidget != null)
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: extraWidget,
            ),
          const Height(32),
          PaddedRow(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (actionType == PopupActionType.two) ...[
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: context.widthPct(0.3),
                    maxHeight: 32,
                  ),
                  child: OutlinedButton(
                    onPressed: () {
                      onNegativeTapped?.call();
                      Navigator.of(context).pop(false);
                    },
                    child: Text(negativeText ?? $strings.cancel),
                  ),
                ),
                const Spacer(),
              ],
              ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: context.widthPct(0.3),
                  maxHeight: 32,
                ),
                child: ElevatedButton(
                  onPressed: isPositiveButtonEnabled
                      ? () {
                          onPositiveTapped?.call();
                          if (closeOnPositiveTapped == null || closeOnPositiveTapped!()) {
                            Navigator.of(context).pop(true);
                          }
                        }
                      : null,
                  child: Text(positiveText ?? 'OK'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static Future<T?> showNotificationPopup<T>({
    required BuildContext context,
    required String message,
    String? title,
    String? positiveText,
    Widget? extraWidget,
    bool fittedMessage = false,
    VoidCallback? onPositiveTapped,
  }) async {
    return await showDialog(
      context: context,
      builder: (context) => CommonPopup(
        title: title,
        message: message,
        extraWidget: extraWidget,
        actionType: PopupActionType.one,
        positiveText: positiveText ?? $strings.close,
        fittedMessage: fittedMessage,
        onPositiveTapped: onPositiveTapped,
      ),
    );
  }

  static Future<T?> showConfirmationPopup<T>(
      {required BuildContext context,
      required String message,
      String? title,
      String? positiveText,
      String? negativeText,
      Widget? extraWidget,
      bool fittedMessage = false,
      VoidCallback? onPositiveTapped,
      VoidCallback? onNegativeTapped}) async {
    return await showDialog(
      context: context,
      builder: (context) => CommonPopup(
        title: title,
        message: message,
        extraWidget: extraWidget,
        actionType: PopupActionType.two,
        positiveText: positiveText ?? $strings.continuee,
        negativeText: negativeText ?? $strings.close,
        fittedMessage: fittedMessage,
        onPositiveTapped: onPositiveTapped,
        onNegativeTapped: onNegativeTapped,
      ),
    );
  }

  static Future<T?> showNoInternetPopup<T>({
    required BuildContext context,
    VoidCallback? onPositiveTapped,
  }) async {
    return await showDialog(
      context: context,
      builder: (context) => CommonPopup(
        title: $strings.noConnectionTitle,
        message: $strings.noConnectionMessage,
        fittedMessage: true,
        actionType: PopupActionType.one,
        positiveText: $strings.close,
        onPositiveTapped: onPositiveTapped,
      ),
    );
  }
}
