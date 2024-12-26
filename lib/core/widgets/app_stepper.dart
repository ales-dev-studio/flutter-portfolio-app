import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/theme/colors.dart';
import 'package:personal_portfolio/core/utils/get_primary_color.dart';
import 'package:personal_portfolio/core/utils/locale_handler.dart';

class AppStepper extends StatelessWidget {
  const AppStepper({
    super.key,
    required this.totalSteps,
    required this.currentStepIndex,
    required this.stepNames,
    required this.stepDescriptions,
    required this.onTap,
    this.trailing,
  })  : assert(currentStepIndex >= 0),
        assert(currentStepIndex <= totalSteps);
  final int totalSteps;
  final int currentStepIndex;
  final List<String> stepNames;
  final List<String> stepDescriptions;
  final ValueChanged onTap;
  final Widget? trailing;

  @override
  Widget build(final BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(totalSteps, (final int index) => index + 1)
          .map((final int stepIndex) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () {
                onTap(stepIndex);
              },
              leading: CircleAvatar(
                backgroundColor: stepIndex > currentStepIndex
                    ? AppColors.disableColor
                    : Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: CircleAvatar(
                    backgroundColor: stepIndex < currentStepIndex
                        ? AppColors.green
                        : stepIndex == currentStepIndex
                            ? getPrimaryColor(context)
                            : AppColors.gray,
                    child: Text(
                      stepIndex.toString(),
                      style: TextStyle(
                        color: stepIndex > currentStepIndex
                            ? AppColors.disableColor
                            : AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
              title: Text(
                stepNames[stepIndex - 1],
                style: const TextStyle(fontSize: 14.0),
              ),
              trailing: trailing,
            ),
            if (stepIndex != totalSteps || currentStepIndex == totalSteps) ...[
              Padding(
                padding: EdgeInsets.only(
                  right: checkEnState(context) ? 16.0 : 30.0,
                  left: checkEnState(context) ? 30.0 : 16.0,
                ),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: stepIndex == currentStepIndex ? 10.0 : 0.0,
                        ),
                        child: VerticalDivider(
                          color: AppColors.disableColor,
                        ),
                      ),
                      const SizedBox(
                        width: 25.0,
                      ),
                      if (stepIndex == currentStepIndex)
                        Expanded(
                          child: Text(
                            stepDescriptions[stepIndex - 1],
                            textAlign: TextAlign.justify,
                            style: const TextStyle(fontSize: 12.0),
                          ),
                        )
                      else
                        const SizedBox(
                          height: 20.0,
                        ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
            ],
          ],
        );
      }).toList(),
    );
  }
}
