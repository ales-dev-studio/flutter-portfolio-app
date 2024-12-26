import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_portfolio/core/routes/go_routes_path.dart';

class IntroductionCubit extends Cubit<int> {
  IntroductionCubit() : super(0);

  void onPageChanged(final int position) {
    emit(position);
  }

  void onNextTap(
    final BuildContext context,
    final PageController pageController,
  ) {
    if (state != 3) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn,
      );
    } else {
      /// TODO ali: Complete here
      // pref.setIntroDisplayState(false);
      // appG.checkTokenFromPWAAndNavigate();

      context.go(GoRoutesPath.home);
    }
  }

  void onSkipTap(final BuildContext context) {
    /// TODO ali: Complete here
    // pref.setIntroDisplayState(false);
    // appG.checkTokenFromPWAAndNavigate();

    context.go(GoRoutesPath.home);
  }
}
