import 'package:anuj_kumar/constants/theme.dart';
import 'package:anuj_kumar/model/data_model.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_lucide/jaspr_lucide.dart';

@client
class FooterSection extends StatelessComponent {
  const FooterSection({super.key});

  @override
  Component build(BuildContext context) {
    final year = DateTime.now().year;
    return footer(
      classes: 'bg-surface border-t border-brand $kFooterSpacing px-6 md:px-8',
      [
        div(
          classes: '$kContainer !px-0 flex flex-col md:flex-row justify-between items-center gap-6',
          [
            JasprBadge.light(),
            div(classes: 'flex flex-col md:flex-row items-center gap-4 md:gap-8 text-sm text-muted', [
              a(
                href: 'mailto:${data.profile.email}',
                classes: 'hover:text-bronze transition-editorial-fast flex items-center gap-2',
                [Mail(height: 14.px, width: 14.px), Component.text('Email')],
              ),
              div(classes: 'hidden md:block w-1 h-1 rounded-full bg-bronze/30', []),
              div([Component.text('© $year ${data.profile.name}')]),
            ]),
          ],
        ),
      ],
    );
  }
}
