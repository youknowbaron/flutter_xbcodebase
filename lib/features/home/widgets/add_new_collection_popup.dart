import 'package:memorise_vocabulary/bridges.dart';
import 'package:memorise_vocabulary/tunnels.dart';

class AddNewCollectionPopup extends HookWidget {
  const AddNewCollectionPopup({super.key, required this.onDoneTapped});

  final StringCallback onDoneTapped;

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    return PopupContainer(
      dismissKeyboardOnTap: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CommonInput(
            controller: textController,
            hintText: 'Tên bộ từ vựng',
          ),
          const Height(16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: ValueListenableBuilder(
              valueListenable: useListenable(textController),
              builder: (context, value, child) => child!,
              child: ElevatedButton(
                onPressed: textController.text.trim().isEmpty
                    ? null
                    : () => onDoneTapped(textController.text),
                child: Text($strings.done),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
