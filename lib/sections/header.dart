import 'package:anuj_kumar/constants/theme.dart';
import 'package:anuj_kumar/model/data_model.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_lucide/jaspr_lucide.dart' hide Target;

class HeaderSection extends StatelessComponent {
  const HeaderSection({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      nav(
        classes:
            'fixed top-0 w-full z-50 bg-[var(--token-header-bg)] backdrop-blur-[12px] border-b border-brand',
        [
          div(
            classes: 'max-w-[1200px] mx-auto px-6 md:px-8 h-16 flex items-center justify-between',
            [
              a(
                href: '#about',
                classes: 'flex items-center gap-3 transition-editorial-fast hover:opacity-80',
                [
                  div(
                    classes:
                        'w-9 h-9 rounded-lg border border-bronze flex items-center justify-center text-bronze font-display font-semibold text-xs tracking-[0.12em]',
                    [Component.text('AK')],
                  ),
                  span(
                    classes: 'hidden sm:inline text-primary font-display font-medium text-sm tracking-[0.06em]',
                    [Component.text(data.profile.name)],
                  ),
                ],
              ),
              div(
                classes: 'hidden md:flex gap-8 text-sm font-medium',
                [
                  _navLink('#about', 'About'),
                  _navLink('#experience', 'Experience'),
                  _navLink('#projects', 'Projects'),
                  _navLink('#contributions', 'Contribution'),
                  _navLink('#skills', 'Skills'),
                ],
              ),
              div(
                classes: 'flex items-center gap-3',
                [
                  button(
                    id: 'theme-toggle',
                    classes:
                        'p-2 rounded-lg border border-brand text-muted transition-editorial-fast hover:text-bronze hover:border-bronze/40 cursor-pointer',
                    attributes: {
                      'type': 'button',
                      'aria-label': 'Toggle color theme',
                    },
                    [
                      div(classes: 'theme-icon-sun', [
                        Sun(styles: Styles(width: 18.px, height: 18.px)),
                      ]),
                      div(classes: 'theme-icon-moon', [
                        Moon(styles: Styles(width: 18.px, height: 18.px)),
                      ]),
                    ],
                  ),
                  a(
                    href: data.profile.social.linkedin,
                    target: Target.blank,
                    classes:
                        'hidden sm:inline-flex items-center gap-2 px-4 py-2 rounded-xl border border-brand text-muted text-xs font-medium transition-editorial-fast hover:text-bronze hover:border-bronze/40 cursor-pointer',
                    [Linkedin(width: 16.px, height: 16.px), Component.text("Let's Connect")],
                  ),
                  button(
                    id: 'mobile-menu-toggle',
                    classes:
                        'md:hidden p-2 rounded-lg border border-brand text-muted transition-editorial-fast hover:text-bronze cursor-pointer',
                    attributes: {
                      'type': 'button',
                      'aria-label': 'Toggle menu',
                      'aria-expanded': 'false',
                      'aria-controls': 'mobile-menu',
                    },
                    [
                      div(classes: 'mobile-menu-icon-open', [
                        Menu(styles: Styles(height: 20.px, width: 20.px)),
                      ]),
                      div(classes: 'mobile-menu-icon-close', [
                        X(styles: Styles(height: 20.px, width: 20.px)),
                      ]),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      div(
        id: 'mobile-menu',
        classes:
            'mobile-menu-panel fixed inset-x-0 top-16 z-50 md:hidden bg-surface border-b border-brand flex flex-col shadow-[0_8px_24px_var(--token-shadow)]',
        [
          _mobileLink('#about', 'About'),
          _mobileLink('#experience', 'Experience'),
          _mobileLink('#projects', 'Projects'),
          _mobileLink('#contributions', 'Contribution'),
          _mobileLink('#skills', 'Skills'),
          div(
            classes: 'p-6 border-t border-brand',
            [
              a(
                href: data.profile.social.linkedin,
                target: Target.blank,
                classes: '$kBtnSecondary w-full text-center',
                [Component.text("Let's Connect")],
              ),
            ],
          ),
        ],
      ),
    ]);
  }

  Component _navLink(String href, String label) {
    return a(
      href: href,
      classes: 'text-muted transition-editorial-fast hover:text-bronze',
      [Component.text(label)],
    );
  }

  Component _mobileLink(String href, String label) {
    return a(
      href: href,
      classes:
          'px-6 py-5 text-base font-medium text-primary hover:text-bronze transition-editorial-fast border-b border-brand',
      [Component.text(label)],
    );
  }
}
