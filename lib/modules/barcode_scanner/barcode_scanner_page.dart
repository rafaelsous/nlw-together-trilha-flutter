import 'package:flutter/material.dart';

import '/shared/widgets/custom_bottom_sheet/custom_bottom_sheet.dart';
import '/shared/widgets/set_label_buttons/set_label_buttons.dart';

import '/shared/themes/app_colors.dart';
import '/shared/themes/app_text_styles.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      title: "Não foi possível identificar um código de barras",
      subtitle: "Tente escanear novamente ou digite o código do seu boleto",
      primaryLabel: "Escanear novamente",
      secondaryLabel: "Digitar código",
      primaryOnPressed: () {},
      secondaryOnPressed: () {},
    );

    return SafeArea(
      top: true,
      left: true,
      bottom: true,
      right: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Escaneie o código de barras do boleto",
              style: TextStyles.buttonBackground,
            ),
            centerTitle: true,
            backgroundColor: Colors.black,
            leading: BackButton(
              color: AppColors.background,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          bottomNavigationBar: SetLabelButtons(
            primaryLabel: "Inserir código do boleto",
            primaryOnPressed: () {},
            secondaryLabel: "Adicionar da galeria",
            secondaryOnPressed: () {},
          ),
        ),
      ),
    );
  }
}
