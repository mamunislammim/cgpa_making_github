import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final TextEditingController _first = TextEditingController();
  final TextEditingController _second = TextEditingController();
  final TextEditingController _third = TextEditingController();
  final TextEditingController _fourth = TextEditingController();
  final TextEditingController _fifth = TextEditingController();
  final TextEditingController _sixth = TextEditingController();
  final TextEditingController _seventh = TextEditingController();
  final TextEditingController _eight = TextEditingController();

  double result = 0.00;
  String? grade;

  String _gradeMaking() {
    if (result > 4.00) {
      return "Wrong Input";
    } else if (result == 4.00) {
      return "A+\n\nBest Result";
    } else if (result >= 3.75 && result < 4.00) {
      return "A\n\nBetter Result";
    } else if (result >= 3.50 && result < 3.75) {
      return "A-\n\nGood Result";
    } else if (result >= 3.25 && result < 3.50) {
      return "B+\n\nGood Result";
    } else if (result >= 3.00 && result < 3.25) {
      return "B";
    } else if (result >= 2.75 && result < 3.00) {
      return "B-";
    } else if (result >= 2.5 && result < 2.75) {
      return "C+";
    } else if (result >= 2.25 && result < 2.50) {
      return "C";
    } else if (result >= 2.00 && result < 2.25) {
      return "D\n\n";
    } else {
      return "Fail..!!\n\nTry Again";
    }
  }

  String? _errorTest(String values) {
    double? r = double.tryParse(values.replaceAll(RegExp(r'[^0-9\.]'), ''));
    if (values.isEmpty) {
      return null;
    }
    if (r! >= 2.00 && r <= 4.00) {
      return null;
    } else {
      return "Invalid Input..Gpa (2.00 - 4.00)";
    }
  }

  void _display() {
    setState(() {
      result = (double.parse(_first.text) * .05) +
          (double.parse(_second.text) * .05) +
          (double.parse(_third.text) * .05) +
          (double.parse(_fourth.text) * .1) +
          (double.parse(_fifth.text) * .15) +
          (double.parse(_sixth.text) * .2) +
          (double.parse(_seventh.text) * .25) +
          (double.parse(_eight.text) * .15);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF144E67),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('image/cgpas.jpg'),
          )),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(top: 18, left: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 2,bottom: 3,left: 10,right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white),
                          gradient: LinearGradient(colors: [Colors.blue,Colors.green.withOpacity(.5)],end: Alignment.topLeft,begin: Alignment.bottomLeft)
                        ),
                        child: const Text(
                          "Know Your CGPA",
                          style:
                              TextStyle(fontSize: 25, color: Colors.greenAccent),
                        ),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  const Card(
                    color: Color(0xff2A6CCA),
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 3, bottom: 3, left: 8, right: 8),
                      child: Text(
                        "Diploma in Engineering\n            Probidhan : 16",
                        style:
                            TextStyle(color: Color(0XFFFEFEFE), fontSize: 11),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "1st Semester ",
                            style: TextStyle(color: Colors.white70),
                          ),
                          SizedBox(
                            height: 30,
                            width: 110,
                            child: TextField(
                              onChanged: (value) {
                                setState(() {});
                              },
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(color: Colors.white),
                              controller: _first,
                              decoration: InputDecoration(
                                errorStyle: const TextStyle(fontSize: 9),
                                errorText: _errorTest(_first.value.text),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        const BorderSide(color: Colors.white)),
                                border: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.white70),
                                    borderRadius: BorderRadius.circular(19)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text("2nd Semester ",
                              style: TextStyle(color: Colors.white70)),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: SizedBox(
                              height: 30,
                              width: 110,
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {});
                                },
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                style: const TextStyle(color: Colors.white),
                                controller: _second,
                                decoration: InputDecoration(
                                  errorStyle: const TextStyle(fontSize: 9),
                                  errorText: _errorTest(_second.value.text),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Colors.white)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(19)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          const Text("3rd Semester ",
                              style: TextStyle(color: Colors.white70)),
                          SizedBox(
                            height: 30,
                            width: 110,
                            child: TextField(
                              onChanged: (value) {
                                setState(() {});
                              },
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(color: Colors.white),
                              controller: _third,
                              decoration: InputDecoration(
                                errorStyle: const TextStyle(fontSize: 9),
                                errorText: _errorTest(_third.value.text),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        const BorderSide(color: Colors.white)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(19)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text("4th Semester ",
                              style: TextStyle(color: Colors.white70)),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: SizedBox(
                              height: 30,
                              width: 110,
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {});
                                },
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                style: const TextStyle(color: Colors.white),
                                controller: _fourth,
                                decoration: InputDecoration(
                                  errorStyle: const TextStyle(fontSize: 9),
                                  errorText: _errorTest(_fourth.value.text),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Colors.white)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(19)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          const Text("5th Semester ",
                              style: TextStyle(color: Colors.white70)),
                          SizedBox(
                            height: 30,
                            width: 110,
                            child: TextField(
                              onChanged: (value) {
                                setState(() {});
                              },
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(color: Colors.white),
                              controller: _fifth,
                              decoration: InputDecoration(
                                errorStyle: const TextStyle(fontSize: 9),
                                errorText: _errorTest(_fifth.value.text),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        const BorderSide(color: Colors.white)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(19)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text("6th Semester ",
                              style: TextStyle(color: Colors.white70)),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: SizedBox(
                              height: 30,
                              width: 110,
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {});
                                },
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                style: const TextStyle(color: Colors.white),
                                controller: _sixth,
                                decoration: InputDecoration(
                                  errorStyle: const TextStyle(fontSize: 9),
                                  errorText: _errorTest(_sixth.value.text),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Colors.white)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(19)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          const Text("7th Semester ",
                              style: TextStyle(color: Colors.white70)),
                          SizedBox(
                            height: 30,
                            width: 110,
                            child: TextField(
                              onChanged: (value) {
                                setState(() {});
                              },
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(color: Colors.white),
                              controller: _seventh,
                              decoration: InputDecoration(
                                errorStyle: const TextStyle(fontSize: 9),
                                errorText: _errorTest(_seventh.value.text),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        const BorderSide(color: Colors.white)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(19)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text("8th Semester ",
                              style: TextStyle(color: Colors.white70)),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: SizedBox(
                              height: 30,
                              width: 110,
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {});
                                },
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                style: const TextStyle(color: Colors.white),
                                controller: _eight,
                                decoration: InputDecoration(
                                  errorStyle: const TextStyle(fontSize: 9),
                                  errorText: _errorTest(_eight.value.text),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Colors.white)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(19)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Reset Button
                      InkWell(
                        onTap: () {
                          setState(() {
                            _first.clear();
                            _second.clear();
                            _third.clear();
                            _fourth.clear();
                            _fifth.clear();
                            _sixth.clear();
                            _seventh.clear();
                            _eight.clear();
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: const BorderSide(color: Colors.white)),
                          color: const Color(0XFF134083),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 17, right: 17),
                            child: Text(
                              "Reset",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                      ),

                      //Submit Button
                      InkWell(
                        onTap: () {
                          setState(() {
                            _display();
                            ElegantNotification.success(
                              displayCloseButton: true,
                              title: const Text("Congratulations.!!",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23)),
                              height: 200,
                              width: 150,
                              iconSize: 1,
                              showProgressIndicator: true,
                              // autoDismiss: false,
                              action: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "CGPA :    $result",
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  Text("Grade : ${_gradeMaking()}",
                                      style:
                                          const TextStyle(color: Colors.white)),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  // Row(
                                  //   mainAxisAlignment: MainAxisAlignment.end,
                                  //   children: [
                                  //     InkWell(
                                  //       onTap : (){
                                  //         _display();
                                  //       } ,
                                  //         child: Text("Ok")),
                                  //   ],
                                  // )
                                ],
                              ),
                              onActionPressed: () {},
                              animation: AnimationType.fromRight,
                              background: const Color(0xff151868),
                              toastDuration: const Duration(seconds: 56),
                              notificationPosition: NotificationPosition.center,
                              description: const Text(""),
                            ).show(context);
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: const BorderSide(color: Colors.white)),
                          color: const Color(0XFF134083),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 13, right: 13),
                            child: Text(
                              "Submit",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        "Powered by : Md Mamun Islam",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
