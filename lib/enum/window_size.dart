import 'package:flutter/material.dart';

enum DeviceType {
  compact,
  medium,
  expanded,
}

extension DeviceTypeSize on BuildContext {
  DeviceType deviceTypeFromWidth() => MediaQuery.of(this).size.width <= 600
      ? DeviceType.compact
      : MediaQuery.of(this).size.width <= 840
          ? DeviceType.medium
          : DeviceType.expanded;

  DeviceType deviceTypeFromHeight() => MediaQuery.of(this).size.height <= 480
      ? DeviceType.compact
      : MediaQuery.of(this).size.width <= 900
          ? DeviceType.medium
          : DeviceType.expanded;
}
