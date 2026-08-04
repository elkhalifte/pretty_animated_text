import 'package:flutter/material.dart';
import '../core/constants.dart';

/// Sidebar navigation item: a dot (or effect icon) + label, with an optional
/// trailing count. Active/hover share the `dsHover` background.
class DsNavItem extends StatefulWidget {
  final String label;
  final bool isActive;
  final VoidCallback onTap;
  final IconData? icon;
  final int? count;

  const DsNavItem({
    super.key,
    required this.label,
    required this.isActive,
    required this.onTap,
    this.icon,
    this.count,
  });

  @override
  State<DsNavItem> createState() => _DsNavItemState();
}

class _DsNavItemState extends State<DsNavItem> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final active = widget.isActive;
    final markColor = active ? dsInk : dsPlaceholder;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 120),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
          decoration: BoxDecoration(
            color: active || _hovered ? dsHover : Colors.transparent,
            borderRadius: BorderRadius.circular(r7),
          ),
          child: Row(
            children: [
              if (widget.icon != null)
                Icon(widget.icon, size: 14, color: markColor)
              else
                Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    color: markColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              const SizedBox(width: 9),
              Expanded(
                child: Text(
                  widget.label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: dsText(
                    size: 13,
                    weight: active ? FontWeight.w500 : FontWeight.w400,
                    color: active ? dsInk : dsText2,
                  ),
                ),
              ),
              if (widget.count != null) ...[
                const SizedBox(width: 8),
                Text('${widget.count}',
                    style: dsText(
                        size: 11, weight: FontWeight.w600, color: dsMuted)),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
