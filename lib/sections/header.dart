import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:anuj_kumar/model/data_model.dart';
import 'package:jaspr_lucide/jaspr_lucide.dart' hide Target;

@client
class HeaderSection extends StatefulComponent {
  const HeaderSection({super.key});

  @override
  State<HeaderSection> createState() => _HeaderState();
}

class _HeaderState extends State<HeaderSection> {
  bool isMobileMenuOpen = false;
  void toggleMobileMenu() {
    setState(() {
      isMobileMenuOpen = !isMobileMenuOpen;
    });
  }

  @override
  Component build(BuildContext context) {
    return div([
      // Header Navigation
      nav(
        classes: 'fixed top-0 w-full z-50 bg-[#0B0B0E]/80 backdrop-blur-xl border-b border-white/5',
        [
          div(
            classes: 'max-w-6xl mx-auto px-6 h-16 flex items-center justify-between',
            [
              // Brand
              div(
                classes: 'text-lg md:text-xl font-bold tracking-tight text-white flex items-center gap-2',
                [
                  div(
                    classes:
                        'w-8 h-8 rounded-lg bg-gradient-to-br from-violet-600 to-fuchsia-600 flex items-center justify-center text-white font-bold text-sm shadow-[0_0_15px_rgba(139,92,246,0.3)]',
                    [Component.text('AK')],
                  ),
                  Component.text('Anuj Kumar'),
                ],
              ),

              // Desktop Nav
              div(
                classes: 'hidden md:flex gap-8 text-sm font-medium',
                [
                  a(
                    href: '#about',
                    classes: 'cursor-pointer transition-all duration-300 text-gray-400 hover:text-violet-400',
                    [Component.text('About')],
                  ),
                  a(
                    href: '#experience',
                    classes: 'cursor-pointer transition-all duration-300 text-gray-400 hover:text-violet-400',
                    [Component.text('Experience')],
                  ),
                  a(
                    href: '#projects',
                    classes: 'cursor-pointer transition-all duration-300 text-gray-400 hover:text-violet-400',
                    [Component.text('Projects')],
                  ),
                  a(
                    href: '#skills',
                    classes: 'cursor-pointer transition-all duration-300 text-gray-400 hover:text-violet-400',
                    [Component.text('Skills')],
                  ),
                ],
              ),

              // Right actions (Desktop)
              div(
                classes: 'hidden md:flex items-center gap-4',
                [
                  a(
                    href: data.profile.social.linkedin,
                    target: Target.blank,
                    classes:
                        'flex items-center gap-2 px-4 py-2 rounded-full bg-white/5 hover:bg-white/10 text-gray-200 text-xs font-medium transition-all border border-white/10 hover:border-violet-500/30 cursor-pointer',
                    [Linkedin(width: 16.px, height: 16.px), Component.text("Let's Connect")],
                  ),
                ],
              ),

              div(
                classes: 'md:hidden items-center gap-4',
                [
                  a(
                    href: data.profile.social.linkedin,
                    target: Target.blank,
                    classes:
                        'flex items-center gap-2 px-4 py-2 rounded-full bg-white/5 hover:bg-white/10 text-gray-200 text-xs font-medium transition-all border border-white/10 hover:border-violet-500/30 cursor-pointer',
                    [Linkedin(width: 16.px, height: 16.px), Component.text("Let's Connect")],
                  ),
                ],
              ),

              // Mobile menu button
              // button(
              //   onClick: toggleMobileMenu,
              //   classes: 'md:hidden text-white p-2 cursor-pointer text-2xl hover:opacity-80 transition-opacity',
              //   [
              //     isMobileMenuOpen
              //         ? X(
              //             styles: Styles(height: 24.px, width: 24.px),
              //           )
              //         : Menu(
              //             styles: Styles(height: 24.px, width: 24.px),
              //           ),
              //   ],
              // ),
            ],
          ),
        ],
      ),

      // Mobile Menu
      // if (isMobileMenuOpen)
      // div(
      //   classes: 'fixed inset-x-0 top-16 z-50 bg-[#0B0B0E] md:hidden flex flex-col h-1/2 min-h-[50vh]',
      //   [
      //     div(
      //       classes: 'flex flex-col gap-0 flex-1',
      //       [
      //         a(
      //           href: '#about',
      //           onClick: toggleMobileMenu,
      //           classes:
      //               'px-6 py-6 text-lg font-semibold text-white hover:bg-white/5 transition-colors border-b border-white/10',
      //           [Component.text('About')],
      //         ),
      //         a(
      //           href: '#experience',
      //           onClick: toggleMobileMenu,
      //           classes:
      //               'px-6 py-6 text-lg font-semibold text-white hover:bg-white/5 transition-colors border-b border-white/10',
      //           [Component.text('Experience')],
      //         ),
      //         a(
      //           href: '#projects',
      //           onClick: toggleMobileMenu,
      //           classes:
      //               'px-6 py-6 text-lg font-semibold text-white hover:bg-white/5 transition-colors border-b border-white/10',
      //           [Component.text('Projects')],
      //         ),
      //         a(
      //           href: '#skills',
      //           onClick: toggleMobileMenu,
      //           classes:
      //               'px-6 py-6 text-lg font-semibold text-white hover:bg-white/5 transition-colors border-b border-white/10',
      //           [Component.text('Skills')],
      //         ),
      //       ],
      //     ),
      //     div(
      //       classes: 'p-6 border-t border-white/10',
      //       [
      //         a(
      //           href: data.profile.social.linkedin,
      //           classes:
      //               'block w-full px-4 py-3 rounded-full bg-gradient-to-r from-violet-600 to-fuchsia-600 text-white text-center font-semibold hover:shadow-[0_0_20px_rgba(139,92,246,0.4)] transition-all',
      //           [Component.text("Let's Connect")],
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    ]);
  }
}
