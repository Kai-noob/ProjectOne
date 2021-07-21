import 'package:flutter/material.dart';

class UserPhoneandAddress extends StatefulWidget {
  const UserPhoneandAddress({Key? key}) : super(key: key);

  @override
  _UserPhoneandAddressState createState() => _UserPhoneandAddressState();
}

class _UserPhoneandAddressState extends State<UserPhoneandAddress> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Text("Upload Your Account Details",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                _entryField("Your Phone Number"),
                _entryField("Your Address Details"),
                _entryField("Your Viber Number"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   
                   DropdownButtonHideUnderline(  // to hide the default underline of the dropdown button
                               child: DropdownButton<String>(
                                //  iconEnabledColor: Color(0xFF595959),  // icon color of the dropdown button
                                 items:['Mandalay', 'Yangon', 'Sagaing', 'Magway'].map((String value){
                                   return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                                   );
                                 }).toList(),
                                 hint: Text("State",style: TextStyle(color: Color(0xFF8B8B8B),fontSize: 15),), 
                                onChanged: (value){
                                  setState(() {
                   
                                  });
                                },
                               ),
                             ),
                   DropdownButtonHideUnderline(  // to hide the default underline of the dropdown button
                               child: DropdownButton<String>(
                                //  iconEnabledColor: Color(0xFF595959),  // icon color of the dropdown button
                                 items:['Mandalay', 'PyinOoLwin', 'ShweBo', 'Magway'].map((String value){
                                   return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                                   );
                                 }).toList(),
                                 hint: Text("District",style: TextStyle(color: Color(0xFF8B8B8B),fontSize: 15),), 
                                onChanged: (value){
                                  setState(() {
                   
                                  });
                                },
                               ),
                             ),
                           DropdownButtonHideUnderline(  // to hide the default underline of the dropdown button
                            child: DropdownButton<String>(
                iconEnabledColor: Color(0xFF595959),  // icon color of the dropdown button
                items:['Mandalay', 'Yangon', 'Sagaing', 'Magway'].map((String value){
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                  );
                }).toList(),
                hint: Text("City",style: TextStyle(color: Color(0xFF8B8B8B),fontSize: 15),), 
                             onChanged: (value){
                 setState(() {
                   
                 });
                             },
                            ),
                          ),
                  
                  ],
                ) 
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }
}
