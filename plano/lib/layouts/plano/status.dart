import 'package:flutter/material.dart';
import 'package:plano/stores/network.dart';
import 'package:provider/provider.dart';

class TrayStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TrayStatusReception(),
          TrayStatusBluetooth(),
        ],
      ),
    );
  }
}

class TrayStatusReception extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NetworkStore>(builder: (context, network, child) {
      IconData icon;

      switch (network.cellStatus) {
        case CellStatus.nodata:
          icon = Icons.signal_cellular_nodata_rounded;
          break;
        case CellStatus.poor:
          icon = Icons.signal_cellular_0_bar_rounded;
          break;
        case CellStatus.good:
          icon = Icons.signal_cellular_4_bar_rounded;
          break;
      }

      return Container(
        height: 24,
        width: 24,
        margin: EdgeInsets.only(bottom: 5),
        child: Icon(
          icon,
          color: Colors.white,
          size: 24,
        ),
      );
    });
  }
}

class TrayStatusBluetooth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NetworkStore>(builder: (context, network, child) {
      IconData icon;

      switch (network.bluetoothStatus) {
        case BluetoothStatus.disabled:
          icon = Icons.bluetooth_disabled_rounded;
          break;
        case BluetoothStatus.searching:
          icon = Icons.bluetooth_searching_rounded;
          break;
        case BluetoothStatus.connected:
          icon = Icons.bluetooth_connected_rounded;
          break;
      }

      return Container(
        height: 24,
        width: 24,
        child: Icon(
          icon,
          color: Colors.white,
          size: 24,
        ),
      );
    });
  }
}
