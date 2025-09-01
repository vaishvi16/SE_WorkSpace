import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OpeartionTask extends StatefulWidget {
  const OpeartionTask({super.key});

  @override
  State<OpeartionTask> createState() => _OpeartionTaskState();
}

enum Operation { Addition, Substraction, Multiplication, Division }

class _OpeartionTaskState extends State<OpeartionTask> {

  Operation _operation = Operation.Multiplication;

   final _formKey = GlobalKey<FormState>();

  TextEditingController first = TextEditingController();
  TextEditingController second = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perform Operation"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: first,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter first digit";
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black87),
                  ),
                  border: OutlineInputBorder(),
                  labelText: "First Digit",
                  hintText: "Enter first digit!",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: second,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter second digit!";
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black87),
                  ),
                  border: OutlineInputBorder(),
                  labelText: "Second Digit",
                  hintText: "Enter second digit",
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Select your Operation",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21),),
            ),
            RadioListTile(
              title: Text("Addition"),
              value: Operation.Addition,
              groupValue: _operation,
              onChanged: (value) {
                setState(() {
                  _operation = value!;

                  var firstValue = int.parse(first.text.toString());
                  var secondValue = int.parse(second.text.toString());

                  if(_formKey.currentState!.validate()){

                   var add = firstValue + secondValue;

                   showToastmsg(add);
                 }

                });
              },
            ),
            RadioListTile(
              title: Text("Substraction"),
              value: Operation.Substraction,
              groupValue: _operation,
              onChanged: (value) {
                setState(() {
                  _operation = value!;

                  var firstValue = int.parse(first.text.toString());
                  var secondValue = int.parse(second.text.toString());

                  var sub = firstValue - secondValue;
                  showToastmsg(sub);
                });
              },
            ),
            RadioListTile(
              title: Text("Multiplication"),
              value: Operation.Multiplication,
              groupValue: _operation,
              onChanged: (value) {
                setState(() {
                  _operation = value!;

                  var firstValue = int.parse(first.text.toString());
                  var secondValue = int.parse(second.text.toString());

                  var mul = firstValue * secondValue;
                  showToastmsg(mul);
                });
              },
            ),
            RadioListTile(
              title: Text("Division"),
              value: Operation.Division,
              groupValue: _operation,
              onChanged: (value) {
                setState(() {
                  _operation = value!;

                  var firstValue = int.parse(first.text.toString());
                  var secondValue = int.parse(second.text.toString());

                  var div = firstValue / secondValue;
                  showToastmsg(div);
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  showToastmsg(var ans) {
    Fluttertoast.showToast(
        msg: "$ans",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        textColor: Colors.white,
        fontSize: 23.0
    );
  }
}
