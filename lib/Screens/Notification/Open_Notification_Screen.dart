import 'package:flutter/material.dart';

class OpenNotificationScreen extends StatelessWidget {
  const OpenNotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var studentName = 'Madhav Arora';
    var date = '12-12-2021';
    var time = '07:10 AM';
    var message = 'Message';
    var ndescription = 'Notification Description';

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  prefixIcon(),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        top: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              text: studentName,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Notification sent on : ',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                                Text(
                                  date + ' ' + time,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade500,
                      letterSpacing: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Text(
                      ndescription,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget prefixIcon() {
    return Container(
      height: 50,
      width: 50,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade300,
      ),
      child: Icon(
        Icons.notifications,
        size: 25,
        color: Colors.grey.shade700,
      ),
    );
  }
}
