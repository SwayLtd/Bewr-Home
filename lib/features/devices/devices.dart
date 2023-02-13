import 'package:bewr_home/core/constants/l10n.dart';
import 'package:flutter/material.dart';

class DevicesScreen extends StatefulWidget {
  const DevicesScreen({super.key});

  @override
  _DevicesScreenState createState() => _DevicesScreenState();
}

class _DevicesScreenState extends State<DevicesScreen> {
  @override
  Widget build(BuildContext context) {
    void showLampControlBottomSheet() {
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
                Text(context.loc.devicesLightIntensity),
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

   final light = SmartDevice(
        context.loc.devicesNameLight, context.loc.devicesStateON, Icons.lightbulb_outline,);
    final thermostat =
        SmartDevice(context.loc.devicesNameThermostat, context.loc.devicesStateTemperature(22), Icons.ac_unit);
    final camera = SmartDevice(
        context.loc.devicesNameCamera, context.loc.devicesStateONLINE, Icons.videocam,);
    final outlet = SmartDevice(
        context.loc.devicesNameOutlet, context.loc.devicesStateON, Icons.power_input,);

    final List<SmartDevice> devices = [light, thermostat, camera, outlet];

    return Scaffold(
      body: ListView.builder(
        itemCount: devices.length,
        itemBuilder: (context, index) {
          final device = devices[index];
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
                showLampControlBottomSheet(); // Show the device control bottom sheet
              },
            ),
          );
        },
      ),
    );
  }
}

// Device model
class SmartDevice {
  final String name;
  final String status;
  final IconData icon;

  SmartDevice(this.name, this.status, this.icon);
}
