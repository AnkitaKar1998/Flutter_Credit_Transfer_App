import 'package:flutter/material.dart';
import 'package:fluttercredittransferapp/screens/models/ModelForRequest.dart';

class RowForApprove extends StatelessWidget {

  final ModelForRequest request;

  RowForApprove({ this.request });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: getImageType(request.status),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        request.name,
                        style: TextStyle(
                            fontSize: 18.0
                        ),
                      ),
                      Text(
                        request.status,
                        style: TextStyle(
                            fontSize: 14.0
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '${request.credit} credits',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        request.dateTime == null ? '' : request.dateTime,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget getImageType(String status) {
    if(status == 'Pending') {
      return Icon(
        Icons.access_time,
        color: Colors.yellow[900],
        size: 40.0,
      );
    } else if(status == 'Approved'){
      return Icon(
        Icons.check,
        color: Colors.green,
        size: 40.0,
      );
    } else {
      return Icon(
        Icons.clear,
        color: Colors.red,
        size: 40.0,
      );
    }
  }
}
