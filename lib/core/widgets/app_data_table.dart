import 'package:flutter/material.dart';

import 'package:personal_portfolio/core/utils/check_theme_status.dart';

class AppDataTable extends StatelessWidget {
  const AppDataTable({
    super.key,
    required this.columns,
    required this.rows,
    required this.onSelectChanged,
    this.elements,
  });

  final List<String> columns;
  final List<List<Widget>> rows;
  final List? elements;
  final ValueChanged<bool?>? onSelectChanged;

  @override
  Widget build(final BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: DataTable(
          showCheckboxColumn: false,
          headingRowColor: MaterialStateColor.resolveWith(
            (final Set<MaterialState> states) => checkDarkMode(context)
                ? Colors.black.withOpacity(0.5)
                : Colors.white,
          ),
          columns: [for (final String s in columns) columnItem(s)],
          rows: [
            for (int i = 0; i < rows.length; i++)
              DataRow(
                color: MaterialStateColor.resolveWith(
                  (final Set<MaterialState> states) => i.isEven
                      ? Colors.grey.withOpacity(0.08)
                      : Colors.transparent,
                ),
                cells: [for (final Widget w in rows[i]) DataCell(w)],
                onSelectChanged: elements == null ? null : onSelectChanged,
              ),
          ],
        ),
      ),
    );
  }

  DataColumn columnItem(final String title) => DataColumn(
        label: Text(
          title,
          style: const TextStyle(fontSize: 15.0),
        ),
      );
}
