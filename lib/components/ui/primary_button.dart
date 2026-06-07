import 'package:anuj_kumar/constants/theme.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class PrimaryButton extends StatelessComponent {
  const PrimaryButton({
    super.key,
    required this.href,
    required this.label,
    this.target,
    this.onClick,
  });

  final String href;
  final String label;
  final Target? target;
  final void Function()? onClick;

  @override
  Component build(BuildContext context) {
    return a(
      href: href,
      target: target,
      onClick: onClick,
      classes: kBtnPrimary,
      [Component.text(label)],
    );
  }
}
