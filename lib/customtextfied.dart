library customtextfied;
import 'package:flutter/material.dart';

class Textfield_custom extends StatefulWidget {
  Icon _icon;
  String _placeholder;
  TextEditingController _controller;
  TextInputType keybord;
  Textfield_custom(this._icon, this._placeholder, this._controller,this.keybord);

  @override
  _Textfield_customState createState() => _Textfield_customState();
}

class _Textfield_customState extends State<Textfield_custom> {

  bool _is_focus=false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: new TextFormField(
        textInputAction: TextInputAction.next,
        controller: widget._controller,
        keyboardType: widget.keybord,
        cursorColor: Theme.of(context).primaryColor,
        style: new TextStyle(color: _is_focus ? Theme.of(context).primaryColor: Colors.black),
        decoration: new InputDecoration(
          filled: true,
          prefixIcon:widget._icon,
          contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
          fillColor: _is_focus?  Theme.of(context).primaryColor.withOpacity(0.2) :Color.fromRGBO(235,235,235,1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          hintText: widget._placeholder,
          hintStyle: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.3)),
        ),
      ),
    );
  }
}
