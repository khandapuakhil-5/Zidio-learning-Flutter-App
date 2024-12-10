import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({Key ?key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.txtColor,
  }): super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? txtColor;



  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40.0, height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Colors.grey.withOpacity(0.3),
        ),
        child: Icon(icon, color: Colors.pink, size: 25.0,),
      ),

      title: Text(title,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
      ),

      trailing: endIcon ? Container(
          width: 30.0, height: 30.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            color: Colors.grey.withOpacity(0.3),
          ),
          child: const Icon(Icons.chevron_right, color: Colors.pink,)
      ) : null,

    );
  }
}