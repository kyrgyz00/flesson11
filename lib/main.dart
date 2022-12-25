import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyPractice11(),
    );
  }
}

class _Buttonszexamples extends StatefulWidget {
  const _Buttonszexamples({super.key});

  @override
  State<_Buttonszexamples> createState() => __ButtonszexamplesState();
}

class __ButtonszexamplesState extends State<_Buttonszexamples> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: PopupMenuButton(
          initialValue: 0,

          onCanceled: () => log("pop up menu"),
          // onSelected: (value) => ,
          itemBuilder: (context) {
            return [
              const PopupMenuItem(child: Text("text 1")),
              const PopupMenuItem(child: Text("text 2"))
            ];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.amber,
        onPressed: () {},
        label: const Text("Floating action button"),
        icon: const Icon(Icons.abc_outlined),
      ),
      body: SafeArea(
          child: InkWell(
        onTap: () {
          print("inkwell");
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                style: TextButton.styleFrom(),
                autofocus: true,
                onLongPress: () {
                  print("Long pressed");
                },
                onPressed: () {
                  print("text button pressed");
                },
                child: const Text(
                  "TextButton",
                  style: TextStyle(color: Colors.red),
                )),
            IconButton(
              onPressed: () {
                print("icon button");
              },
              icon: const Icon(Icons.access_alarm),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 100),
                  backgroundColor: Colors.black,
                  // side: BorderSide(width: 10, color: Colors.red),
                  disabledBackgroundColor: Colors.black.withOpacity(0.5),
                ),
                onPressed: () {},
                child: const Text("Elevatedbutton")),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                ),
                onPressed: () {},
                child: const Text("OuLinedButton")),
            InkWell(
              onTap: () {},
              child: Container(
                  color: Colors.red,
                  child: Column(
                    children: [
                      Container(
                        width: 300,
                        height: 100,
                        color: Colors.blue,
                      ),
                      const Text("vhbfakjvbvlh")
                    ],
                  )),
            )
          ],
        ),
      )),
    );
  }
}

void onpressed() {}

class MyPractice11 extends StatefulWidget {
  const MyPractice11({super.key});

  @override
  State<MyPractice11> createState() => _MyPractice11State();
}

class _MyPractice11State extends State<MyPractice11> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffE5E5E5),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: const Color(0xff0D1F3C),
        ),
        centerTitle: true,
        title: const SizedBox(
          child: Text(
            "HomeWork",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xff0D1F3C),
            ),
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: width * 0.210,
        height: 79,
        child: FloatingActionButton(
          shape: const StadiumBorder(
              side: BorderSide(width: 1, color: Color(0xff000000))),
          onPressed: () {},
          backgroundColor: const Color(0xffF24242),
          child: const Icon(
            CupertinoIcons.heart,
            color: Color(0xff0D1F3C),
            size: 41,
          ),
        ),
      ),
      backgroundColor: const Color(0xffE5E5E5),
      body: SafeArea(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 26),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    const Text(
                      "I",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 31,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "love".toUpperCase(),
                      style: const TextStyle(
                          color: Color(0xffFF0000),
                          fontSize: 31,
                          fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                  ],
                ),
              )),
          TextButton(
            onPressed: () {},
            child: const Text(
              "ITC BOOTCAMP",
              style: TextStyle(
                  color: Color(0xffFF000000),
                  fontSize: 31,
                  fontWeight: FontWeight.w500),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  // padding: EdgeInsets.only(top: 34, bottom: 16),
                  backgroundColor: const Color(0xffBB6BD9),
                  side: const BorderSide(width: 1, color: Color(0xff333333))),
              onPressed: () {},
              child: Container(
                width: width * 0.893,
                height: 40,
                alignment: Alignment.center,
                child: const Text(
                  "Dastan",
                  style: TextStyle(
                      color: Color(0xffF333333),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              )),
          const SizedBox(
            height: 16,
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(width: 1, color: Color(0xff333333)),
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 8, bottom: 22)),
              onPressed: () {},
              child: SizedBox(
                width: width * 0.381,
                height: 24,
                child: const Text(
                  "Dastan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xffF333333),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              )),
          const SizedBox(
            height: 16,
          ),
          IconButton(
              iconSize: 69,
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.heart,
                color: Color(0xffEB5757),
              ))
        ],
      )),
    );
  }
}
