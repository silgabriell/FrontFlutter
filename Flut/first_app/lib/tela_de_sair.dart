import 'package:first_app/login.dart';
import 'package:flutter/material.dart';

class ConfirmSairDialog {
  static Future<bool?> show(BuildContext context) async {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Tem certeza que deseja sair?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF212157),
              fontSize: 22,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w700,
            ),
          ),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 10,
                  ),
                  backgroundColor: const Color(0xFFFF6767),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  shadowColor: const Color(0x3F212157),
                  elevation: 4,
                ),
                child: const Text(
                  'Não',
                  style: TextStyle(
                    color: Color(0xFF212157),
                    fontSize: 20,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginUser()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 10,
                  ),
                  backgroundColor: const Color(0xFF76AD5C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  shadowColor: const Color(0x3F212157),
                  elevation: 4,
                ),
                child: const Text(
                  'Sim',
                  style: TextStyle(
                    color: Color(0xFF212157),
                    fontSize: 20,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
