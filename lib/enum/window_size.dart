import 'package:flutter/material.dart';

enum DeviceType {
  compact,
  medium,
  expanded,
}

extension DeviceTypeSize on BuildContext {
  DeviceType deviceTypeFromWidth() => size!.width <= 600
      ? DeviceType.compact
      : size!.width <= 840
          ? DeviceType.medium
          : DeviceType.expanded;

  DeviceType deviceTypeFromHeight() => size!.width <= 480
      ? DeviceType.compact
      : size!.width <= 900
          ? DeviceType.medium
          : DeviceType.expanded;
}
