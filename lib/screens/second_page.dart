import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//
import 'package:demo_provider/controllers/home_ctrler.dart';
import 'package:demo_provider/screens/third_page.dart';

class SegundaPage extends StatelessWidget {
  const SegundaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //instancias el provider..
    final _homeCtrler = Provider.of<HomeCtrler>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Página '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Los incrementos que Llevas:',
            ),
            // lees la variable desde el provider...
            Text(
              '${_homeCtrler.contador}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'i',
            onPressed: () {
              // aumentas el valor de la variable en el provider....
              _homeCtrler.contador++;
            },
            tooltip: 'Incrementar',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 20),
          FloatingActionButton(
            heroTag: 'next',
            onPressed: () {
              final route =
                  MaterialPageRoute(builder: (context) => const TerceraPage());
              Navigator.push(context, route);
            },
            tooltip: 'Siguiente',
            child: const Icon(Icons.arrow_forward),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
