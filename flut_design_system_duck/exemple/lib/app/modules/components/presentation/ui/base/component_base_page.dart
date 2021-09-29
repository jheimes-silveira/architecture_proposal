import 'package:exemple/app/modules/components/data/models/dto/atribute_dto.dart';
import 'package:exemple/app/modules/components/presentation/ui/widgets/content_widget.dart';
import 'package:exemple/app/modules/components/presentation/ui/widgets/device_widget.dart';
import 'package:flutter/material.dart';

abstract class ComponentBasePage extends State {
  String title();

  String description();

  List<AtributeDto> atributs();

  Widget buildComponentWidget();

  void onUpdateAtributs(List<AtributeDto> atributs);

  Widget instanceComponentWidget();

  Color backgroudDeviceColor() {
    return Colors.white;
  }

  getWhereAtribut(List<AtributeDto> atributs, String name) {
    return atributs.where((e) => e.name == name).first.value;
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildContent(),
          _buildDevice(),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Expanded(
      child: ContentWidget(
        atributs: atributs(),
        onAtributs: (atributs) {
          onUpdateAtributs(atributs);
        },
        description: description(),
        title: title(),
        component: instanceComponentWidget(),
      ),
    );
  }

  Widget _buildDevice() {
    return DeviceWidget(
      child: Scaffold(
        backgroundColor: backgroudDeviceColor(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildComponentWidget(),
          ],
        ),
      ),
    );
  }
}
