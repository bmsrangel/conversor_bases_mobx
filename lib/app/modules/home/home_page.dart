import 'package:conversor_binario_mobx/app/modules/home/components/input_field/input_field_widget.dart';
import 'package:conversor_binario_mobx/app/modules/home/home_controller.dart';
import 'package:conversor_binario_mobx/app/modules/home/home_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Conversor de Bases Num. MobX"})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeModule.to.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                homeController.clearAll();
                FocusScope.of(context).unfocus();
              },
            ),
          ],
        ),
        body: Observer(
          builder: (_) {
            return Column(
              children: <Widget>[
                InputFieldWidget(
                  controller: homeController.decimal,
                  label: "DEC",
                  labelText: "Decimal",
                  onChanged: homeController.fromDec,
                ),
                InputFieldWidget(
                  controller: homeController.binary,
                  label: "BIN",
                  labelText: "Binary",
                  onChanged: homeController.fromBin,
                ),
                InputFieldWidget(
                  controller: homeController.octal,
                  label: "OCT",
                  labelText: "Octal",
                  onChanged: homeController.fromOct,
                ),
                InputFieldWidget(
                  controller: homeController.hexa,
                  label: "HEX",
                  labelText: "Hexadecimal",
                  onChanged: homeController.fromHex,
                ),
              ],
            );
          },
        ));
  }
}
