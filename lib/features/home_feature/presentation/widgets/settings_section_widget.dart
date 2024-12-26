import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/theme/colors.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/utils/check_theme_status.dart';
import 'package:personal_portfolio/core/utils/locale_handler.dart';
import 'package:personal_portfolio/core/widgets/app_bottom_sheet_dialog.dart';
import 'package:personal_portfolio/core/widgets/app_card.dart';
import 'package:personal_portfolio/core/widgets/app_divider.dart';
import 'package:personal_portfolio/core/widgets/app_scaffold.dart';
import 'package:personal_portfolio/core/widgets/app_space.dart';
import 'package:personal_portfolio/core/widgets/buttons/app_icon_button.dart';
import 'package:personal_portfolio/core/widgets/general_appbar.dart';
import 'package:personal_portfolio/features/home_feature/presentation/bloc/counter_cubit.dart';
import 'package:personal_portfolio/features/home_feature/presentation/bloc/primary_color_cubit.dart';
import 'package:personal_portfolio/features/home_feature/presentation/bloc/theme_cubit.dart';

class SettingsSectionWidget extends StatelessWidget {
  const SettingsSectionWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    return AppScaffold(
      appBar: GeneralAppBar(
        title: t.settings,
      ),
      smallBody: ListView(
        shrinkWrap: true,
        children: [
          BlocBuilder<CounterCubit, int>(
            builder: (final BuildContext context, final int state) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    AppCard(
                      onTap: () {
                        context.read<ThemeCubit>().toggleTheme();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(t.themeMode),
                          Switch(
                            thumbIcon: WidgetStateProperty.resolveWith<Icon>(
                                (final Set<WidgetState> states) {
                              if (states.contains(WidgetState.selected)) {
                                return const Icon(Icons.dark_mode_outlined);
                              } else {
                                return const Icon(Icons.light_mode_outlined);
                              }
                            }),
                            value: checkDarkMode(context),
                            onChanged: (final bool value) {
                              context.read<ThemeCubit>().toggleTheme();
                            },
                          ),
                        ],
                      ),
                    ),
                    const AppVSpace(),
                    AppCard(
                      onTap: () {
                        changeLanguageDialog(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(t.language),
                          Row(
                            children: [
                              Text(LocaleHandler().getLocaleTitle(context)),
                              const AppHSpace(),
                              const Icon(Icons.keyboard_arrow_down_sharp),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const AppVSpace(),
                    AppCard(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(t.themeColor),
                          Row(
                            children: [
                              AppIconButton(
                                icon: Icons.color_lens_outlined,
                                iconColor: Colors.red,
                                onPressed: () {
                                  context
                                      .read<PrimaryColorCubit>()
                                      .setRedColor();
                                },
                              ),
                              const AppHSpace(),
                              AppIconButton(
                                icon: Icons.color_lens_outlined,
                                iconColor: Colors.green,
                                onPressed: () {
                                  context
                                      .read<PrimaryColorCubit>()
                                      .setGreenColor();
                                },
                              ),
                              const AppHSpace(),
                              AppIconButton(
                                icon: Icons.color_lens_outlined,
                                iconColor: Colors.blue,
                                onPressed: () {
                                  context
                                      .read<PrimaryColorCubit>()
                                      .setBlueColor();
                                },
                              ),
                              const AppHSpace(),
                              AppIconButton(
                                icon: Icons.color_lens_outlined,
                                iconColor: AppColors.primaryColor,
                                onPressed: () {
                                  context
                                      .read<PrimaryColorCubit>()
                                      .setPurpleColor();
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  void changeLanguageDialog(final BuildContext context) {
    appModalBottomSheetDialog(
      context,
      t.language,
      '',
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: Dimens.padding,
            ),
            title: Text(t.farsi),
            onTap: () {
              context.pop();
              LocaleHandler().setFaLocale(context);
            },
            trailing: !checkEnState(context) ? const Icon(Icons.check) : null,
          ),
          const AppDivider(
            height: 0,
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: Dimens.padding,
            ),
            title: Text(t.english),
            onTap: () {
              context.pop();
              LocaleHandler().setEnLocale(context);
            },
            trailing: checkEnState(context) ? const Icon(Icons.check) : null,
          ),
          const AppVSpace(),
        ],
      ),
    );
  }
}
