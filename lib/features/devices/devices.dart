import 'package:flutter/material.dart';

class DevicesPage extends StatefulWidget {
  const DevicesPage({super.key});

  @override
  _DevicesPageState createState() => _DevicesPageState();
}

class _DevicesPageState extends State<DevicesPage> {
  final List<SmartDevice> _devices = [light, thermostat, camera, outlet];

  void _showLampControlBottomSheet() {
    int lampIntensity = 50; // TEST

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 500,
          ),
          child: Column(
            children: [
              const Text('Intensité de la lampe'), // TODO: Localize
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
                      // Turn the device on or off here
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {
                      // Show the device settings here
                    },
                  ),
                ],
              ),
              onTap: () {
                _showLampControlBottomSheet(); // Show the device control bottom sheet
              },
            ),
          );
        },
      ),
    );
  }
}

final light = SmartDevice('Lampe de salon', 'Allumée', Icons.lightbulb_outline); // TODO: Localize
final thermostat = SmartDevice('Thermostat', '22°C', Icons.ac_unit); // TODO: Localize
final camera = SmartDevice('Caméra de surveillance', 'En ligne', Icons.videocam); // TODO: Localize
final outlet = SmartDevice('Prise de salon', 'Allumée', Icons.power_input); // TODO: Localize

// Device model
class SmartDevice {
  final String name;
  final String status;
  final IconData icon;

  SmartDevice(this.name, this.status, this.icon);
}
