import 'package:anuj_kumar/components/ui/section_heading.dart';
import 'package:anuj_kumar/constants/theme.dart';
import 'package:anuj_kumar/model/data_model.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

@client
class SkillsSection extends StatelessComponent {
  const SkillsSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      id: 'skills',
      classes: '$kContainer $kSectionSpacing',
      [
        const SectionHeading(title: 'Expertise'),
        div(classes: 'grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 md:gap-8', [
          for (var entry in data.skills.list)
            div(
              classes: '$kCardSurface p-8 flex flex-col',
              [
                h3(
                  classes:
                      'font-display text-xl font-medium text-primary border-b border-brand pb-4 mb-4',
                  [Component.text(entry.category)],
                ),
                p(classes: 'text-muted text-sm leading-[1.7] mb-6 flex-grow', [
                  Component.text(entry.description),
                ]),
                p(classes: 'text-sm text-muted leading-relaxed', [
                  Component.text(entry.skills.join(' · ')),
                ]),
              ],
            ),
        ]),
      ],
    );
  }
}
