import 'package:flutter/material.dart';
import 'package:smart_home_app/core/widgets/drawer.dart';

class Devices extends StatefulWidget {
  static const String routeName = '/devices';

  @override
  _DevicesState createState() => _DevicesState();
}

class _DevicesState extends State<Devices> {
  final List<SmartDevice> _devices = [livingLight, thermostat, camera, outlet];

  @override
  void initState() {
    super.initState();
    // Récupérer les informations sur les objets connectés ici
    // ...
  }

  void _showLampControlBottomSheet() {
    int lampIntensity = 50;

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 500,
          ),
          child: Column(
            children: [
              const Text('Intensité de la lampe'),
              Slider(
                value: lampIntensity.toDouble(),
                max: 100,
                onChanged: (double newIntensity) {
                  setState(() {
                    lampIntensity = newIntensity.round();
                  });
                },
              ),
            ],
          ),
        );
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      isDismissible: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _devices.length,
        itemBuilder: (context, index) {
          final device = _devices[index];
          return Card(
            child: ListTile(
              leading: Icon(device.icon),
              title: Text(device.name),
              subtitle: Text(device.status),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.power_settings_new),
                    onPressed: () {
                      // Gérer le contrôle de l'objet connecté ici
                      // ...
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {
                      // Gérer les paramètres de l'objet connecté ici
                      // ...
                    },
                  ),
                ],
              ),
              onTap: () {
                _showLampControlBottomSheet();
              },
            ),
          );
        },
      ),
    );
  }
}

final livingLight = SmartDevice('Lampe de salon', 'Allumée', Icons.lightbulb_outline);
final thermostat = SmartDevice('Thermostat', '22°C', Icons.ac_unit);
final camera = SmartDevice('Caméra de surveillance', 'En ligne', Icons.videocam);
final outlet = SmartDevice('Prise de salon', 'Allumée', Icons.power_input);

class SmartDevice {
  final String name;
  final String status;
  final IconData icon;

  SmartDevice(this.name, this.status, this.icon);
}