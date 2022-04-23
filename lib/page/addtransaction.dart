import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:tugas3/widget/nav.dart';

enum SingingCharacter { lafayette, jefferson, samsul }

class AddTrasaction extends StatefulWidget {
  const AddTrasaction({Key? key}) : super(key: key);

  @override
  State<AddTrasaction> createState() => _AddTrasactionState();
}

class _AddTrasactionState extends State<AddTrasaction> {
  String? selectedValue;
  List<String> genderItems = [
    'test1',
    'test2',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.blueAccent,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ScreenNav()));
          },
        ),
        title: const Text(
          'Add Transaction',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 15,
          right: 15,
        ),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Text(
                'Transaction',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  fontSize: 18,
                ),
              ),
            ),
            Divider(
              color: Colors.black.withOpacity(0.5),
              height: 10,
              thickness: 0.5,
              indent: 10,
              endIndent: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 15),
              child: const Text(
                'Select Product',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 0),
              child: DropdownButtonFormField2(
                decoration: InputDecoration(
                  //Add isDense true and zero Padding.
                  //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextFormField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //Add more decoration as you want here
                  //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                ),
                isExpanded: true,
                hint: const Text(
                  'Select Product',
                  style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Colors.black45,
                ),
                iconSize: 30,
                buttonHeight: 60,
                buttonPadding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                items: genderItems
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                    .toList(),
                onChanged: (value) {
                  //Do something when changing the item if you want.
                },
                onSaved: (value) {
                  selectedValue = value.toString();
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 15),
              child: const Text(
                'Select Type',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 170,
                  height: 70,
                  decoration: BoxDecoration(
                    color: const Color(0xFF5ACADB).withOpacity(0.15),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'In',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  width: 170,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'Out',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: const Text(
                'Quantity',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(),
              child: TextFormField(
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  fillColor: Colors.white,
                  filled: true,

                  hintText: 'Quantity',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: const Text(
                'Note',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(),
              child: TextFormField(
                maxLines: 6,
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  fillColor: Colors.white,
                  filled: true,

                  hintText: 'Enter the Description  ',
                  // hintStyle: ,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenNav()));
              },
              child: Container(
                height: 60,
                margin: EdgeInsets.only(top: 90, bottom: 20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF1089FF),
                      Color(0xff19B9EB),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                    child: Text(
                  'Add Transaction',
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
