import 'package:exemple/app/modules/components/data/models/dto/atribute_dto.dart';
import 'package:exemple/app/modules/components/presentation/ui/base/component_base_page.dart';
import 'package:flut_design_system_duck/components/avatar/duck_avatar.dart';
import 'package:flutter/material.dart';

class AvatarPage extends StatefulWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  _AvatarPageState createState() => _AvatarPageState();
}

class _AvatarPageState extends ComponentBasePage {
  List<AtributeDto> listAtributs = [
    AtributeDto(
      type: 'String?',
      name: 'imageUrl',
    ),
    AtributeDto(
      type: 'BorderRadius?',
      name: 'borderRadius',
    ),
    AtributeDto(
      type: 'bool?',
      name: 'selected',
      value: false,
      options: [false, true],
    ),
    AtributeDto(
      type: 'Color?',
      name: 'selectedTileColor',
    ),
    AtributeDto(
      type: 'String?',
      name: 'placeHolderInitiais',
      value: 'A',
    ),
    AtributeDto(
      type: 'double',
      name: 'height',
      value: 40,
    ),
    AtributeDto(
      type: 'double',
      name: 'width',
      value: 40,
    ),
  ];

  @override
  List<AtributeDto> atributs() {
    return listAtributs;
  }

  @override
  Widget buildComponentWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: DuckAvatar(
          imageUrl: getWhereAtribut(atributs(), 'imageUrl'),
          borderRadius: getWhereAtribut(atributs(), 'borderRadius'),
          selected: getWhereAtribut(atributs(), 'selected'),
          selectedTileColor: getWhereAtribut(atributs(), 'selectedTileColor'),
          placeHolderInitiais:
              getWhereAtribut(atributs(), 'placeHolderInitiais'),
          height: getWhereAtribut(atributs(), 'height'),
          width: getWhereAtribut(atributs(), 'width'),
        ),
      ),
    );
  }

  @override
  String description() {
    return '';
  }

  @override
  Widget instanceComponentWidget() {
    return DuckAvatar();
  }

  @override
  String title() {
    return 'DuckAvatar';
  }

  @override
  void onUpdateAtributs(List<AtributeDto> atributs) {
    setState(() {
      this.listAtributs = atributs;
    });
  }
}
