import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:nubank_clone/ui/screens/home/components/main_card.dart';

class InsuranceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainCard(
      'Seguro de vida',
      [
        Text(
          'Conheça Nubank Vida: um seguro simples e que cabe no bolso.',
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(fontWeight: FontWeight.w500),
        ),
      ],
      onTap: () {},
      icon: Mdi.heartOutline,
    );
  }
}
