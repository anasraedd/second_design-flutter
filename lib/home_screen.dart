import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second_design/models/Task.dart';
import 'package:second_design/widgets/check_circle.dart';
import 'package:second_design/widgets/chek_task.dart';
import 'package:second_design/widgets/custom_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isChecked = false;
  List<Task> tasks = [
    Task(isChecked: false, title: 'Take medicine on time'),
    Task(isChecked: true, title: 'Wesh yesterday clother')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FA),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          toolbarHeight: 110,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(35),
            bottomLeft: Radius.circular(35),
          )),
          leading: Padding(
            padding: const EdgeInsets.only(top: 50, left: 15),
            child: Text(
              '18',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          title: Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 17),
                  child: Text(
                    'Friday',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                Text(
                  'July 2023',
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Container(
                margin: EdgeInsets.only(top: 41, bottom: 19, right: 20),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(5555555),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/images%2Fuser-removebg-preview.png?alt=media&token=6af53acd-89ef-4f7c-9772-81d60b0b54a1"),
                    ))),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              CustomCard(
                title: 'In the morning',
                date: ' 10 may, 2019',
                tasks: [
                  Task(isChecked: false, title: 'Take medicine on time'),
                  Task(isChecked: true, title: 'Wesh yesterday\'s clothes')
                ],
                colorCard: Color(0xFF3AC3AF),
              ),
              CustomCard(
                title: 'After work',
                date: ' 10 may, 2019',
                tasks: [
                  Task(isChecked: false, title: 'Go to the bank'),
                  Task(isChecked: true, title: 'Register in the wave relese a work'),
                  Task(isChecked: true, title: 'See a movie')
                ],
                colorCard: Colors.white,
                checkedColor: Color(0xFFFDA065),
                uncheckedColor: Colors.grey,
              ),

              CustomCard(
                title: 'Going to bed',
                date: ' 10 may. 2023',
                tasks: [
                  Task(isChecked: false, title: 'Call mom'),
                  Task(isChecked: true, title: 'Redd a design journal')
                ],
                colorCard: Color(0xFF7583FE),
              ),

              // CustomCard(
              //     title: 'After work',
              //     date: ' 10 may. 2019',
              //     tasks: [
              //       Task(isChecked: false, title: 'Take medicine on time'),
              //       Task(isChecked: true, title: 'Wesh yesterday clother')
              //     ],
              //     colorCard: Color(0xFF3AC3AF)),
              /* Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(30.0),
                      bottomRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                    ),
                  ),
                  color: Colors.blue,
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
                              'In the morning',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'In the morning',
                              style:
                                  TextStyle(color: Colors.white70, fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CheckTask(
                          isChecked: _isChecked,
                          checkedColor: Colors.white,
                          uncheckedColor: Colors.white,
                          text: 'Take medicine on time',
                        ),
                       
                        Container(
                            alignment: Alignment.topRight,

                            child: Icon(Icons.more_vert, color: Colors.white)),
                      ],

                    ),
                  ))*/
            ],
          ),
        ));
  }
}
