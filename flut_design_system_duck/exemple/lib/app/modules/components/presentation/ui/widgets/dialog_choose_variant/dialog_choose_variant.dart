import 'package:exemple/app/modules/components/presentation/ui/widgets/dialog_choose_variant/dialog_choose_variant_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DialogChooseVariant {
  static Future show<T>({
    required BuildContext context,
    required String title,
   
    required List<dynamic>? items,
    required dynamic itemDefault,
  }) async {
    final _controller = Modular.get<DialogChooseVariantController>();
    _controller.setSelected(itemDefault);
    return await showDialog(
      context: context,
      useRootNavigator: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Observer(
            builder: (_) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: items!
                    .map(
                      (e) => RadioListTile<T>(
                        value: e,
                        toggleable: _controller.selected == e,
                        selected: _controller.selected == e,
                        groupValue: _controller.selected,
                        title: Text(e.toString()),
                        onChanged: (_) {
                          _controller.setSelected(e);
                        },
                      ),
                    )
                    .toList(),
              );
            },
          ),
          actionsOverflowButtonSpacing: 16,
          actions: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(_controller.selected);
                    },
                    child: Text('Atualizar'),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
