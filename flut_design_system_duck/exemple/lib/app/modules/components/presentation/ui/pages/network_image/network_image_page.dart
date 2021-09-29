import 'package:exemple/app/modules/components/data/models/dto/atribute_dto.dart';
import 'package:exemple/app/modules/components/presentation/ui/base/component_base_page.dart';
import 'package:flut_design_system_duck/components/network_image/duck_network_image.dart';
import 'package:flutter/material.dart';

class NetworkImagePage extends StatefulWidget {
  const NetworkImagePage({Key? key}) : super(key: key);

  @override
  _NetworkImagePageState createState() => _NetworkImagePageState();
}

class _NetworkImagePageState extends ComponentBasePage {
  List<AtributeDto> listAtributs = [
    AtributeDto(
        type: 'String?',
        name: 'imageUrl',
        value:
            'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg'),
    AtributeDto(
      type: 'String?',
      name: 'imageUrl',
      value: null,
    ),
    AtributeDto(
      type: 'double?',
      name: 'height',
      value: 200,
    ),
    AtributeDto(
      type: 'double?',
      name: 'width',
      value: 200,
    ),
    AtributeDto(
      type: 'Color?',
      name: 'color',
      value: null,
    ),
    AtributeDto(
      type: 'bool?',
      name: 'circular',
      value: true,
      options: [false, true],
    ),
    AtributeDto(
      type: 'Alignment?',
      name: 'alignment',
      value: Alignment.center,
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
        child: DuckNetworkImage(
          imageUrl: getWhereAtribut(atributs(), 'imageUrl'),
          height: getWhereAtribut(atributs(), 'height'),
          width: getWhereAtribut(atributs(), 'width'),
          color: getWhereAtribut(atributs(), 'color'),
          circular: getWhereAtribut(atributs(), 'circular'),
          alignment: getWhereAtribut(atributs(), 'alignment'),
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
    return DuckNetworkImage();
  }

  @override
  String title() {
    return 'DuckNetworkImage';
  }

  @override
  void onUpdateAtributs(List<AtributeDto> atributs) {
    setState(() {
      this.listAtributs = atributs;
    });
  }
}
