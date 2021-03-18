import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final IconData icon;
  final String hintext;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool isPassword;
  final IconData suffixIcon;

  const CustomInput({
    Key key,
    @required this.icon,
    @required this.hintext,
    @required this.textController,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      padding: EdgeInsets.only(right: 50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          // color: Color(0xFFE97C7C),
          color: Colors.grey[800],
          border: Border.all(color: Colors.white.withOpacity(0.5))
          // image: DecorationImage(image: AssetImage('assetName'))
          ),
      child: TextField(
        obscureText: this.isPassword,
        controller: this.textController,
        textAlign: TextAlign.center,
        keyboardType: this.keyboardType,
        decoration: InputDecoration(
          hintText: this.hintext,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          icon: Container(
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                ),
                Container(
                    margin: EdgeInsets.only(top: 7, left: 6),
                    child: Icon(
                      this.icon,
                      color: Colors.orange[900],
                      size: 35,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
