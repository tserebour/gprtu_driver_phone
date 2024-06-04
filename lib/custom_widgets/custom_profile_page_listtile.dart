import 'package:flutter/material.dart';

class CustomProfilePageListTile extends StatelessWidget {
  //callback function
  final VoidCallback? onTap;
  final String title;
  final Icon icon;
  const CustomProfilePageListTile({super.key, this.onTap, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        color: const Color.fromRGBO(200, 200, 255, 1),
        child: ListTile(
          leading: icon,
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),

          onTap: onTap,

        ),
      ),
    );
  }
}
