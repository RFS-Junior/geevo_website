import 'package:flutter/material.dart';

class MenuTopPage extends StatelessWidget {
  const MenuTopPage({
    super.key,
    required this.keys,
    required this.drawer,
  });

  final List<GlobalKey<State<StatefulWidget>>> keys;
  final bool drawer;

  @override
  Widget build(BuildContext context) {
    ListView listView = ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      scrollDirection: drawer ? Axis.vertical : Axis.horizontal,
      children: [
        _buildMenuButton(context, "HOME", keys[0], drawer ? true : false),
        _buildMenuButton(context, "PRODUTOS", keys[1], drawer ? true : false),
        _buildMenuButton(context, "CLIENTES", keys[2], drawer ? true : false),
        _buildMenuButton(context, "SOBRE", keys[3], drawer ? true : false),
        _buildMenuButton(context, "TIME", keys[4], drawer ? true : false),
        _buildMenuButton(context, "CONTATO", keys[5], drawer ? true : false),
      ],
    );
    return drawer
        ? listView
        : Row(
            children: [
              Expanded(flex: 1, child: Container()),
              Expanded(
                flex: 3,
                child: listView,
              ),
              Expanded(flex: 1, child: Container()),
            ],
          );
  }

  Widget _buildMenuButton(
      BuildContext context, String text, GlobalKey key, bool drawer) {
    return TextButton(
      onPressed: () async {
        if (key.currentContext != null) {
          if (drawer) Navigator.pop(context);
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
            fontSize: 16, color: drawer ? Colors.black : Colors.white),
      ),
    );
  }
}
