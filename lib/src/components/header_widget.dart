import 'package:flutter/material.dart';

class ApplicationHeaderWidget extends StatelessWidget {
  const ApplicationHeaderWidget({Key? key}) : super(key: key);

  // TODO Dados do banco
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 100,
        color: Colors.orange,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Jovens Tardes de Domingo - Clube da Nostalgia - 18/12/2022 - 16:00',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
