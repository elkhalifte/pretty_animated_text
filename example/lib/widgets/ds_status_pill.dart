import 'package:flutter/material.dart';
import '../core/constants.dart';

/// Flat status pill: dot + label, colored by [DsStatusKind].
class DsStatusPill extends StatelessWidget {
  final DsStatusKind kind;
  final String label;

  const DsStatusPill({super.key, required this.kind, required this.label});

  @override
  Widget build(BuildContext context) {
    final s = dsStatus(kind);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: s.bg,
        border: Border.all(color: s.border),
        borderRadius: BorderRadius.circular(rPill),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 7,
            height: 7,
            decoration: BoxDecoration(color: s.dot, shape: BoxShape.circle),
          ),
          const SizedBox(width: 6),
          Text(label, style: dsSmall(color: s.fg)),
        ],
      ),
    );
  }
}
