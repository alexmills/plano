import 'package:flutter/material.dart';

enum BluetoothStatus {
  disabled,
  searching,
  connected,
}

enum CellStatus {
  nodata,
  poor,
  good,
}

class NetworkStore extends ChangeNotifier {
  BluetoothStatus bluetoothStatus = BluetoothStatus.disabled;
  CellStatus cellStatus = CellStatus.nodata;
}
