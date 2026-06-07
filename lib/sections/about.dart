import 'package:anuj_kumar/components/ui/primary_button.dart';
import 'package:anuj_kumar/components/ui/secondary_button.dart';
import 'package:anuj_kumar/constants/theme.dart';
import 'package:anuj_kumar/model/data_model.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_lucide/jaspr_lucide.dart' hide Target;

@client
class About extends StatelessComponent {
  const About({super.key});

  @override
  Component build(BuildContext context) {
    final stats = data.heroStats;

    return section(
      id: 'about',
      classes: '$kContainer $kHeroSpacing',
      [
        div(
          classes: 'space-y-8',
          [
            p(classes: kLabel, [Component.text(data.profile.heroLabel)]),
            div(
              classes: 'grid grid-cols-1 lg:grid-cols-2 gap-16 lg:gap-20 items-start',
              [
                // Left: headline (+ actions on mobile)
                div(
                  classes: 'space-y-8 animate-hero-enter',
                  [
                    h1(
                      classes: 'font-display text-display-hero font-medium text-primary tracking-tight',
                      [Component.text(data.profile.heroHeadline)],
                    ),
                    div(classes: 'lg:hidden', [_heroActions()]),
                  ],
                ),

                // Right: stat cards (+ actions on desktop)
                div(
                  classes: 'flex flex-col',
                  [
                    div(
                      classes: 'grid grid-cols-2 gap-4 lg:gap-5',
                      [
                        _statCard('Years Experience', stats.yearsExperience),
                        _statCard('Projects Delivered', stats.projectsDelivered),
                        _statCard('Core Stack', stats.coreStack),
                        _statCard('Contribution', stats.contribution),
                      ],
                    ),
                    div(classes: 'hidden lg:block lg:mt-12', [_heroActions()]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Component _heroActions() {
    return div(
      classes: 'space-y-8',
      [
        p(
          classes: 'text-lg text-muted max-w-xl leading-[1.7]',
          [Component.text(data.profile.tagline)],
        ),
        div(
          classes: 'flex flex-wrap gap-4',
          [
            const PrimaryButton(href: '#projects', label: 'View Projects'),
            SecondaryButton(
              href: data.profile.social.linkedin,
              label: "Let's Connect",
              target: Target.blank,
            ),
          ],
        ),
        div(
          classes: 'flex flex-wrap gap-3',
          [
            _socialIcon(data.profile.social.github, Github(), Target.blank),
            if (data.profile.social.twitter != null)
              _socialIcon(data.profile.social.twitter!, span(classes: 'icon-x', []), Target.blank),
            _socialIcon('mailto:${data.profile.email}', Mail(), null),
            a(
              href: data.profile.resumeLink,
              target: Target.blank,
              classes: '$kBtnIcon flex items-center gap-2',
              [
                Download(height: 18.px, width: 18.px),
                Component.text('Resume'),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Component _socialIcon(String href, Component icon, Target? target) {
    return a(
      href: href,
      target: target,
      classes: kBtnIcon,
      [icon],
    );
  }

  Component _statCard(String label, String value) {
    return div(
      classes: '$kCardElevated p-6 md:p-7 flex flex-col gap-3',
      [
        span(classes: 'text-xs uppercase tracking-[0.1em] text-muted font-display', [
          Component.text(label),
        ]),
        span(classes: 'text-primary font-display font-medium text-lg leading-snug', [
          Component.text(value),
        ]),
      ],
    );
  }
}
