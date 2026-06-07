import 'package:anuj_kumar/constants/theme.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class SectionHeading extends StatelessComponent {
  const SectionHeading({
    super.key,
    required this.title,
    this.icon,
  });

  final String title;
  final Component? icon;

  @override
  Component build(BuildContext context) {
    return h2(
      classes: '$kSectionTitle $kSectionTitleGap flex items-center gap-3',
      [
        if (icon != null) icon!,
        Component.text(title),
      ],
    );
  }
}
