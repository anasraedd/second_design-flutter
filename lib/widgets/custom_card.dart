import 'package:flutter/material.dart';
import 'package:second_design/models/Task.dart';
import 'package:second_design/widgets/chek_task.dart';


class CustomCard extends StatelessWidget {
  final String title;
  final String date;
  final List<Task> tasks;
  final Color colorCard;
  final Color checkedColor;
  final Color uncheckedColor;

  CustomCard({
    required this.title,
    required this.date,
    required this.tasks,
    required this.colorCard,
    this.checkedColor = Colors.white,
    this.uncheckedColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10 ),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(30.0),
              bottomRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
            ),
          ),
          color: colorCard,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                          title,
                          style: TextStyle(
                              color: colorCard != Colors.white ? Colors.white : Colors.black ,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      date,
                      style:
                      TextStyle(color: Colors.white30, fontSize: 12, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),


                ListView.builder(
                  shrinkWrap: true,
                  itemCount: tasks.length,
                  itemBuilder: (BuildContext context, int index) {
                    final bool isChecked = tasks[index].isChecked;
                    final String title = tasks[index].title;
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: CheckTask(
                        isChecked: isChecked,
                        checkedColor: checkedColor,
                        uncheckedColor: uncheckedColor,
                        text: title,
                        colorCircle: colorCard,
                      ),
                    );
                  },
                ),
                Container(
                    alignment: Alignment.topRight,

                    child: Icon(Icons.more_vert, color: colorCard != Colors.white ? Colors.white : Colors.black)),
              ],

            ),
          )),
    );
  }
}
