
import 'package:flutter/material.dart';
import 'assignment_data.dart';

class AssignmentDatatable extends StatefulWidget {
  const AssignmentDatatable({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AssignmentDatatableState();
  }
}

class AssignmentDatatableState extends State<AssignmentDatatable> {
  final DataTableSource _data = AssignmentData();
  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable(
      columns: const [
        DataColumn(
            label: Text(
          "SN",
          style: TextStyle(color: Colors.red),
        )),
        DataColumn(
          label: Text(
            "Date",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 12.0,
            ),
          ),
        ),
        DataColumn(
            label: Text(
          "Institution",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 12.0,
          ),
        )),
        DataColumn(
            label: Text(
          "Topic",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 12.0,
          ),
        )),
        DataColumn(
          label: Text(
            "Status",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 12.0,
            ),
          ),
        ),
        DataColumn(
            label: Text(
          "       Action",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 12.0,
          ),
        ))
      ],
      source: _data,
      columnSpacing: 20.0,
      horizontalMargin: 20.0,
      rowsPerPage: 6,
      showCheckboxColumn: false,
    );
  }
}
