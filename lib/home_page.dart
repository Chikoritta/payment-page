import 'package:flutter/material.dart';

const kActiveColor = Color(0xffE8F3F5);
const kInactiveColor = Color(0xff08807f);

enum ButtonState { signIn, login }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ButtonState? isSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kInactiveColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top: 0.0, left: 15.0, right: 20.0, bottom: 5.0),
              child: SizedBox(
                height: 270,
                width: 300,
                child: Image(
                  image: AssetImage(
                    'assets/ReplaceColr4.png',
                  ),
                ),
              ),
            ),
          ),
          const Text(
            'Fastest way to make \nall your Payment',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xffE8F3F5),
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.0,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Paywise is the safest and fastest \nway to pay your bills',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xffE8F3F5),
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.0,
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          SizedBox(
            width: 300,
            height: 65,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                  (_) {
                    return RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    );
                  },
                ),
                side: getBorder(kActiveColor, kInactiveColor),
                foregroundColor: getColor(kActiveColor, kInactiveColor),
                backgroundColor: getColor(kInactiveColor, kActiveColor),
                padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
              ),
              child: const Center(
                child: Text(
                  'Create an account',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: 300,
            height: 65,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                  (_) {
                    return RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    );
                  },
                ),
                side: getBorder(kActiveColor, kInactiveColor),
                foregroundColor: getColor(kActiveColor, kInactiveColor),
                backgroundColor: getColor(kInactiveColor, kActiveColor),
                padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
              ),
              child: Center(
                child: const Text(
                  'Log in',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

MaterialStateProperty<BorderSide>? getBorder(Color color, Color colorPressed) {
  final getBorder = (Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return BorderSide(color: colorPressed, width: 3);
    } else {
      return BorderSide(color: color, width: 3);
    }
  };
  return MaterialStateProperty.resolveWith(getBorder);
}

MaterialStateProperty<Color>? getColor(Color color, Color colorPressed) {
  final getColor = (Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return colorPressed;
    } else {
      return color;
    }
  };
  return MaterialStateProperty.resolveWith(getColor);
}
