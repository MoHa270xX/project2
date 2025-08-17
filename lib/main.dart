import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "widgets Collection",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
          ),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TextExampel(),
        TextExampel2(),
        TextExampel3(),
        Divider(thickness: 2, indent: 15, endIndent: 15),
        IconsExampel(),
        Divider(thickness: 2, indent: 15, endIndent: 15),
        SizedBox(height: 10),
        ElevatedButtonExample(),
        SizedBox(height: 20),
        OutlinedButtonExample(),
        SizedBox(height: 20),
        TextButtonExample(),
        SizedBox(height: 20),
        LikeIcon(),
        SizedBox(height: 10),
        Divider(thickness: 2, indent: 15, endIndent: 15),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: CheckBoxExample(
            value: true,
            onChanged: (newValue) => print("Checkbox clicked: $newValue"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: CheckBoxExample2(
            value: false,
            onChanged: (newValue) => print("Checkbox clicked: $newValue"),
          ),
        ),
        Padding(
           padding: const EdgeInsets.only(left: 16),
          child: RadioExampel(
            value: true,
            onChanged: (value) {
              print("Radio clicked: $value");
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: RadioExampe2(
            value: true,
            onChanged: (value) {
              print("Radio clicked: $value");
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Notifications(value: true, onChanged: (value){
              print("Notification: $value");
          }),
        ),

          Divider(thickness: 2, indent: 15, endIndent: 15),
      ],
    );
  }
}

class TextExampel extends StatelessWidget {
  const TextExampel({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Big Title",
        style: TextStyle(
          color: Colors.black,
          fontSize: 34,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class TextExampel2 extends StatelessWidget {
  const TextExampel2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Subtitle with color",
        style: TextStyle(color: Colors.purple, fontSize: 26),
      ),
    );
  }
}

class TextExampel3 extends StatelessWidget {
  const TextExampel3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "small gray text",
        style: TextStyle(color: Colors.grey, fontSize: 20),
      ),
    );
  }
}

class IconsExampel extends StatelessWidget {
  const IconsExampel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Padding(
          padding: const EdgeInsets.only(left: 70, top: 8, bottom: 8),
          child: Icon(Icons.home, color: Colors.blueAccent, size: 50),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 32, left: 32),
          child: Icon(Icons.favorite, color: Colors.red, size: 50),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 70, top: 8, bottom: 8),
          child: Icon(Icons.settings, color: Colors.green, size: 50),
        ),
      ],
    );
  }
}

class ElevatedButtonExample extends StatelessWidget {
  const ElevatedButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            textStyle: TextStyle(fontSize: 18),
            backgroundColor: Color(0xff009788),
            foregroundColor: Colors.white,
            shadowColor: Colors.black,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
              top: 4,
              bottom: 4,
            ),
            child: Text("Elevated Button"),
          ),
        ),
      ),
    );
  }
}

class OutlinedButtonExample extends StatelessWidget {
  const OutlinedButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          textStyle: TextStyle(fontSize: 20),
          foregroundColor: Color(0xff009788),
          side: BorderSide(color: Color(0xff009788), width: 3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(),
          child: Text("Outlined Button"),
        ),
      ),
    );
  }
}

class TextButtonExample extends StatelessWidget {
  const TextButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          textStyle: TextStyle(fontSize: 18),
          foregroundColor: Colors.purple,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 8,
            bottom: 8,
          ),
          child: Text("Text Button"),
        ),
      ),
    );
  }
}

class LikeIcon extends StatelessWidget {
  const LikeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.thumb_up, color: Colors.blue, size: 45);
  }
}

class CheckBoxExample extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged; // callback

  const CheckBoxExample({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: Colors.grey,
          checkColor: Colors.white,
          side: BorderSide(color: Colors.grey, width: 2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        Text("Accept policy", style: TextStyle(fontSize: 20)),
      ],
    );
  }
}

class CheckBoxExample2 extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;

  const CheckBoxExample2({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          checkColor: Colors.white,
          side: BorderSide(color: Color(0xff0D8F7E), width: 2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        Text("subscribe Newsletter", style: TextStyle(fontSize: 20)),
      ],
    );
  }
}

class RadioExampel extends StatelessWidget {
  const RadioExampel({required this.value, required this.onChanged, super.key});
  final bool value;
  final void Function(bool?)? onChanged;
  final bool selectedValue = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio<bool>(
          value: value,
          groupValue: selectedValue,
          onChanged: onChanged,
          activeColor: Colors.grey,
        ),
        Text("Male", style: TextStyle(fontSize: 20)),
      ],
    );
  }
}

class RadioExampe2 extends StatelessWidget {
  const RadioExampe2({required this.value, required this.onChanged, super.key});
  final bool value;
  final void Function(bool?)? onChanged;
  final bool selectedValue = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio<bool>(
          value: value,
          groupValue: selectedValue,
          onChanged: onChanged,
          hoverColor: Colors.grey,
        ),
        Text("Female", style: TextStyle(fontSize: 20)),
      ],
    );
  }
}

class Notifications extends StatelessWidget {
  const Notifications({required this.value,required this.onChanged ,super.key});
  final void Function(bool)? onChanged;
  final bool value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Enable Notifications", style: TextStyle(fontSize: 18)),
        SizedBox(width: 10),
        Switch(
          value: value,
          onChanged: onChanged,
          activeColor:Color(0xffFEF7FF),
          activeTrackColor:Color(0xffE3DCE4) ,
        ),
      ],
    );
  }
}
