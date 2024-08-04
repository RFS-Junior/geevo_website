import 'package:flutter/material.dart';

class MenuTopPage extends StatelessWidget {
  const MenuTopPage({
    super.key,
    required this.keys,
  });

  final List<GlobalKey<State<StatefulWidget>>> keys;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Container()),
        Expanded(
          flex: 3,
          child: Row(
            children: <Widget>[
              _buildMenuButton(context, "HOME", keys[0]),
              _buildMenuButton(context, "PRODUTOS", keys[1]),
              _buildMenuButton(context, "CLIENTES", keys[2]),
              _buildMenuButton(context, "SOBRE", keys[3]),
              _buildMenuButton(context, "TIME", keys[4]),
              _buildMenuButton(context, "CONTATO", keys[5]),
            ],
          ),
        ),
        Expanded(flex: 1, child: Container()),
      ],
    );
  }

  Widget _buildMenuButton(BuildContext context, String text, GlobalKey key) {
    return TextButton(
      onPressed: () async {
        if (key.currentContext != null) {
          await Scrollable.ensureVisible(
            key.currentContext!,
            duration: const Duration(milliseconds: 600),
          );
        } else {
          print('Erro: currentContext é nulo para a chave $key');
        }
      },
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 14,
              color: Colors.white,
            ),
      ),
    );
  }
}
