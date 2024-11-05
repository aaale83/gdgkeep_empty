import 'package:flutter/material.dart';

class LeftMenu extends StatelessWidget {
  const LeftMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          // TODO: Chiedere ai presenti come si potrebbe migliorare il DRY in questa porzione di codice
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 16, 16, 16),
            child: Row(
              children: [
                Image.asset("assets/img/idea.png", width: 32),
                const SizedBox(
                  width: 16,
                ),
                const Text("Note"),
              ],
            ),
          ),
          // TODO: Chiedere ai presenti come si potrebbe migliorare il DRY in questa porzione di codice
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 16, 16, 16),
            child: Row(
              children: [
                Image.asset("assets/img/settings.png", width: 32),
                const SizedBox(
                  width: 16,
                ),
                const Text("Impostazioni"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
