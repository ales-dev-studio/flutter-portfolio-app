import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/widgets/app_scaffold.dart';
import 'package:personal_portfolio/core/widgets/general_appbar.dart';

class PortfolioSectionWidget extends StatelessWidget {
  const PortfolioSectionWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    return AppScaffold(
      appBar: GeneralAppBar(
        title: t.portfolio,
      ),
    );
  }
}
