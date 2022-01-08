import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//
import 'package:demo_provider/controllers/home_ctrler.dart';

class TerceraPage extends StatelessWidget {
  const TerceraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // instancias el provider para que este a la escucha
    final _homeCtrler = Provider.of<HomeCtrler>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tercera Página '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Aquí solo muestras pero no incrementas..',
            ),
            // si en la pagina 2 o en el home se actualiza,
            // aquí tambien se actualiza...
            Text(
              '${_homeCtrler.contador}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
