import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/core/router.dart';
import 'package:nubank_clone/theme/colors.dart';
import 'package:nubank_clone/theme/icons.dart';
import 'package:nubank_clone/widgets/nu_outlined_button.dart';

class LoanScreen extends StatelessWidget {
  const LoanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            NuIcons.nuds_ic_chevron_left,
            color: kSecondaryTextColor,
          ),
          onPressed: () => MyRouter.popPage(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Mdi.helpCircleOutline, color: kSecondaryTextColor),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Text(
                    'O valor disponível no momento é de R\$ $kLoan',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Este valor pode mudar diariamente devido à nossa análise de crédito.',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(height: 1.3),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Entenda como funciona >',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(color: kPrimaryColor),
                  ),
                  const SizedBox(height: 45),
                  const NuOutlinedButton('Novo empréstimo'),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Container(height: 1, color: kLineColor),
            const SizedBox(height: 30),
            Center(
              child: Text(
                'Você não possui nenhum empréstimo ativo.',
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
