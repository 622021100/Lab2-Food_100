// ignore_for_file: file_names

import 'dart:ui';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.food_bank_rounded,
            size: 30,
          ),
        ),
        backgroundColor: Colors.blueGrey[500],
        title: const Text(
          'Food App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          cover(),
          title(),
          subTitle(),
          card(),
          profile(),
          date(),
          talk(),
          subtitle1(),
        ],
      ),
    );
  }

  Row talk() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: FaIcon(
            FontAwesomeIcons.smile,
            size: 15,
          ),
        ),
        Text(
          'เกริ่นสักหน่อย',
          style: TextStyle(
            fontSize: 18,
          ),
        )
      ],
    );
  }

  Container card() {
    return Container(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          color: Colors.blueGrey[300],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              time(),
              utensils(),
              fire(),
              user(),
            ],
          ),
        ),
      ),
    );
  }

  Widget subtitle1() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(30, 2, 30, 20),
      child: Text(
        'ใครคิดว่า “ออมเลตชีส” ทำยาก เห็นสูตรนี้ต้องเปลี่ยนใจแล้ว! อีกหนึ่งเมนูไข่ทำง่าย ๆ อารมณ์ดี๊ดี ไว้สำหรับเป็นอาหารเช้าในวันสบาย ๆ ที่อยากทำอาหารเช้ากินเอง หรือจะทำให้เด็ก ๆ กินก็ได้นะ รับรองว่าเป็นที่ถูกอกถูกใจแน่นอน เพราะมีทั้งไข่ออมเลตนุ่ม ๆ และชีสสุดยืดด ของโปรด ถ้าพร้อมแล้วไปเข้าครัวดูวิธีทำออมเลตกันเลย ',
      ),
    );
  }

  Widget user() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.user,
              color: Colors.green,
            ),
            Text(
              'สำหรับ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '1 เสิร์ฟ ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget fire() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.gripfire,
              color: Colors.red,
            ),
            Text(
              'แคลอรี่',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '300 Kcal/เสิร์ฟ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget utensils() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.utensils,
              color: Colors.yellow,
            ),
            Text(
              'เวลาปรุง ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '20 นาที',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget time() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.stopwatch,
              color: Colors.blue,
            ),
            Text(
              'เวลาเตรียม',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '15 นาที',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget date() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'วันที่ 17 ธ.ค. 2564  โดย เชฟแป้ง',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  CircleAvatar profile() {
    return const CircleAvatar(
      radius: 60,
      backgroundColor: Colors.blueGrey,
      child: CircleAvatar(
        radius: 55,
        backgroundImage: NetworkImage(
          'https://scontent.fbkk3-1.fna.fbcdn.net/v/t1.6435-9/202906712_3869544563171696_4744972605227938922_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=174925&_nc_eui2=AeGeVUn89malor-l18F18Vg7pROK4cqq1pOlE4rhyqrWk9Z3FXva2QwinDps0CtSDMcb9sJfKYDEtQCDzTNGICtv&_nc_ohc=wqbm7WOWq9YAX-f2799&_nc_ht=scontent.fbkk3-1.fna&oh=00_AT80BJVgyr0TJOW3UX_Vw3Lo-jdSY8aTwF8lexX4LLTzFg&oe=61E40CC8',
        ),
      ),
    );
  }

  Widget subTitle() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(30, 2, 30, 5),
      child: Text(
        'แจกสูตรอาหารเช้าง่าย ๆ "ออมเลตชีส" เมนูไข่ของโปรดทุกรุ่นทุกวัย เนื้อไข่นุ่มมมละมุนลิ้น แถมชีสเยิ้ม ๆ ยั่วใจ ทำตามกันได้ที่บ้านเลย ขนาดนี้ต้องลองทำแล้ว! ',
      ),
    );
  }

  Widget title() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(30, 20, 30, 2),
      child: Text(
        'วิธีทำ “ออมเลตชีส” เมนูไข่เนื้อนุ่ม ชีสเยิ้ม อิ่มท้องง่าย ๆ ในยามเช้า!',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }

  SizedBox cover() {
    return SizedBox(
      width: 150,
      height: 200,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: new AssetImage('images/1.jpg'),
          ),
        ),
      ),
    );
  }
}
