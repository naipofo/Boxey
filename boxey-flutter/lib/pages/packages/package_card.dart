import '../../protos/packages.pbgrpc.dart';
import 'package:flutter/material.dart';

class PackageCard extends StatelessWidget {
  const PackageCard({
    super.key,
    required this.package,
    this.onTap,
    this.selected = false,
  });

  final Package package;
  final Function()? onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    var onColor = Theme.of(context).colorScheme.onSurfaceVariant;
    var shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    );
    return Card(
      shape: shape,
      elevation: selected ? 4.0 : 0.0,
      color: Theme.of(context).colorScheme.surfaceVariant,
      child: InkWell(
        customBorder: shape,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                package.title,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: onColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text('${package.weight} g ')
            ],
          ),
        ),
      ),
    );
  }
}
