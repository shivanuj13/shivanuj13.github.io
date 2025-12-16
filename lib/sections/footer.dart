import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:anuj_kumar/model/data_model.dart';
import 'package:jaspr_lucide/jaspr_lucide.dart';

@client
class FooterSection extends StatelessComponent {
  const FooterSection({super.key});

  @override
  Component build(BuildContext context) {
    final year = DateTime.now().year;
    return footer(classes: 'border-t border-white/5 bg-[#050507] py-8 md:py-12 px-6', [
      div(classes: 'max-w-6xl mx-auto flex flex-col md:flex-row justify-between items-center gap-6', [
        JasprBadge.light(),

        div(classes: 'flex flex-col md:flex-row items-center gap-4 md:gap-8 text-sm text-gray-500', [
          a(
            href: 'mailto:${data.profile.email}',
            classes: 'hover:text-violet-400 transition-colors flex items-center gap-2',
            [Mail(height: 12.px, width: 12.px), Component.text(data.profile.email)],
          ),
          div(classes: 'hidden md:block w-1 h-1 rounded-full bg-white/20', []),
          div(classes: 'text-gray-500 text-sm text-center md:text-left', [Component.text('© $year Anuj Kumar')]),
          // div(classes: 'flex items-center gap-2', [Component.text(data.profile.phone)]),
        ]),
      ]),
    ]);
  }
}
