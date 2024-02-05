import 'package:flutter/material.dart';
import 'package:session11_sqlite_db/models/student.dart';

class StudentCardWidget extends StatelessWidget {
  final Student student;
  final VoidCallback onDelete;
  final VoidCallback onUpdate;
  const StudentCardWidget(
      {super.key,
      required this.student,
      required this.onDelete,
      required this.onUpdate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.black,
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(
                  // mainAxisAlignment : MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Icon(
                      Icons.forum,
                      color: Colors.white,
                      size: 40,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                      size: 25,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      student.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        //fontFamily: "monospace",
                        //fontWeight:FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.school,
                      size: 25,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      student.uni,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.business,
                      size: 25,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '${student.course}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        //fontFamily: "monospace",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.email,
                      size: 25,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      student.email,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        //fontFamily: "monospace",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.phone,
                      size: 25,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      student.mobile,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        //fontFamily: "TrojanPro",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: onUpdate,
                      child: const Text(
                        "UPDATE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          //fontFamily: "TrojanPro",
                          //fontStyle: FontStyle.,
                        ),
                      ),
                    ),
                    const SizedBox(width: 60),
                    TextButton(
                        onPressed: onDelete,
                        child: const Text(
                          "DELETE",
                          style: TextStyle(
                            //backgroundColor:Colors.grey,
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "TrojanPro",
                            // fontStyle: FontStyle.italic,
                          ),
                        )),
                  ],
                )
                // Adds a subtitle to the card
              ],
            ),
          ],
        ),
      ),
    );
  }
}
