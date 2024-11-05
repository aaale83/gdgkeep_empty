import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            children: [
              Image.asset("assets/img/logo.png", height: 48),
              const SizedBox(
                width: 16,
              ),
              const Text(
                "GDG Keep",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
              const SizedBox(
                width: 80,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width - 300 - 24,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Cerca',
                    hintStyle: const TextStyle(
                      color: Colors.grey
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                )
              )
            ],
          ),
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: Colors.grey[300],
        )
      ],
    );
  }
}
