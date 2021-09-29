import 'package:exemple/app/core/utils/utils.dart';
import 'package:exemple/app/modules/components/data/models/dto/atribute_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'dialog_choose_variant/dialog_choose_variant.dart';

class ContentWidget extends StatelessWidget {
  final String title;
  final String description;
  final Widget component;
  final List<AtributeDto> atributs;
  final Function(List<AtributeDto> atributs)? onAtributs;

  const ContentWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.atributs,
    required this.component,
    this.onAtributs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            right: 32,
            left: 32,
            top: 48,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildTitle(context),
              _buildDescription(context),
              _buildAtributes(context, atributs),
              _buildAtributsVariant(context, atributs),
              _buildPreviewCode(context),
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildDescription(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: SelectableText(
        description,
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }

  Text _buildTitle(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5,
    );
  }

  Widget _buildPreviewCode(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Stack(
        children: [
          Card(
            elevation: 0,
            color: Colors.grey[800],
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: SelectableText(
                          _generateWidgetToString(),
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: IconButton(
              color: Colors.white,
              onPressed: () {
                Utils.clipboard(_generateWidgetToString());
              },
              icon: Icon(Icons.copy, size: 20),
            ),
          ),
        ],
      ),
    );
  }

  String _generateWidgetToString() {
    final atributes =
        this.atributs.map((e) => "\n    ${e.name}: ${e.toStringValue},").join();
    return "${component.toString()}($atributes\n)";
  }

  Widget _buildAtributes(BuildContext context, List<AtributeDto> atributes) {
    List<Widget> widgets = [];

    widgets.add(
      Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Text(
          'Atributos',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );

    atributes.forEach(
      (e) {
        if (e.options == null) {
          widgets.add(
            Container(
              padding: EdgeInsets.only(top: 4),
              child: Row(
                children: [
                  Text(
                    e.type,
                    style: Theme.of(context).textTheme.caption,
                  ),
                  SizedBox(width: 8),
                  Text(
                    e.name,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
          );
        }
      },
    );

    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgets,
      ),
    );
  }

  Widget _buildAtributsVariant(
    BuildContext context,
    List<AtributeDto> atributs,
  ) {
    final List<Widget> widgets = [];

    widgets.add(
      Padding(
        padding: const EdgeInsets.only(
          top: 16.0,
          bottom: 16.0,
        ),
        child: Text(
          "Configurações de variante",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );

    atributs.forEach(
      (e) {
        if (e.options != null)
          widgets.add(
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      e.type,
                      style: Theme.of(context).textTheme.caption,
                    ),
                    SizedBox(width: 8),
                    Text(
                      e.name,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () async {
                              final result = await DialogChooseVariant.show(
                                context: context,
                                title: e.name,
                                items: e.options,
                                itemDefault: e.value,
                              );

                              if (onAtributs != null) {
                                e.value = result;
                                onAtributs!(atributs);
                              }
                            },
                            child: Text(
                              'Alterar',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(),
              ],
            ),
          );
      },
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets,
    );
  }
}
