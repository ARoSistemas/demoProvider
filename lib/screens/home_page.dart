import 'package:demo_provider/controllers/home_ctrler.dart';
import 'package:demo_provider/screens/second_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // instalacias el provider..
    final _homeCtrler = Provider.of<HomeCtrler>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Mi Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Las veces que has incrementado en el HomePage',
            ),
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
                  MaterialPageRoute(builder: (context) => const SegundaPage());
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
