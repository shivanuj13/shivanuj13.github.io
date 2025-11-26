import 'package:jaspr/jaspr.dart';
import 'package:anuj_kumar/model/data_model.dart';
import 'package:jaspr_lucide/jaspr_lucide.dart';

// By using the @client annotation this component will be automatically compiled to javascript and mounted
// on the client. Therefore:
// - this file and any imported file must be compilable for both server and client environments.
// - this component and any child components will be built once on the server during pre-rendering and then
//   again on the client during normal rendering.
@client
class About extends StatelessComponent {
  const About({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      id: 'about',
      classes:
          'pt-32 pb-16 md:pb-24 px-6 max-w-6xl mx-auto flex flex-col lg:flex-row items-center lg:items-start justify-between gap-12 lg:gap-8 relative',
      [
        // Left column: headline, tagline and actions
        div(
          classes: 'flex-1 space-y-6 md:space-y-8 animate-fade-in-up text-center lg:text-left z-10',
          [
            div(
              classes:
                  'inline-flex items-center gap-2 px-3 py-1 rounded-full bg-violet-900/20 border border-violet-500/20 text-violet-300 text-xs font-medium shadow-[0_0_10px_rgba(139,92,246,0.1)]',
              [
                // small mobile icon placeholder
                Smartphone(width: 14.px, height: 14.px),
                text('Mobile Application Developer'),
              ],
            ),

            h1(
              classes: 'text-4xl md:text-6xl lg:text-7xl font-bold text-white tracking-tight leading-[1.1]',
              [
                text('Building scalable '),
                br(),
                span(
                  classes:
                      'text-transparent bg-clip-text bg-gradient-to-r from-violet-400 via-fuchsia-400 to-indigo-400 drop-shadow-[0_0_10px_rgba(168,85,247,0.2)]',
                  [text('mobile experiences.')],
                ),
              ],
            ),

            p(
              classes: 'text-lg md:text-xl text-gray-400 max-w-xl leading-relaxed mx-auto lg:mx-0',
              [
                text(
                  '${data.profile.tagline} Currently engineering high-performance fintech solutions at PowerUp Money.',
                ),
              ],
            ),

            div(
              classes: 'flex flex-wrap justify-center lg:justify-start gap-4 pt-4',
              [
                a(
                  href: '#',
                  classes:
                      'p-3 rounded-xl bg-white/5 hover:bg-white/10 text-white transition-all border border-white/10 hover:border-violet-500/50 hover:shadow-[0_0_15px_rgba(139,92,246,0.2)]',
                  [
                    Github(),
                  ],
                ),
                a(
                  href: '#',
                  classes:
                      'p-3 rounded-xl bg-white/5 hover:bg-white/10 text-white transition-all border border-white/10 hover:border-violet-500/50 hover:shadow-[0_0_15px_rgba(139,92,246,0.2)]',
                  [
                    Twitter(),
                  ],
                ),
                a(
                  href: 'mailto:${data.profile.email}',
                  classes:
                      'p-3 rounded-xl bg-white/5 hover:bg-white/10 text-white transition-all border border-white/10 hover:border-violet-500/50 hover:shadow-[0_0_15px_rgba(139,92,246,0.2)]',
                  [Mail()],
                ),
                button(
                  classes:
                      'flex items-center gap-2 px-6 py-3 rounded-xl bg-gradient-to-r from-violet-600 to-indigo-600 hover:from-violet-500 hover:to-indigo-500 text-white font-medium transition-all shadow-[0_0_20px_rgba(99,102,241,0.3)] hover:shadow-[0_0_30px_rgba(99,102,241,0.5)]',
                  [
                    Download(height: 20.px, width: 20.px),
                    text('Resume'),
                  ],
                ),
              ],
            ),
          ],
        ),

        // Right column: stats / glass card
        div(
          classes:
              'w-full max-w-md lg:w-80 p-1 rounded-3xl bg-gradient-to-br from-white/10 to-transparent p-[1px] relative overflow-hidden group',
          [
            div(
              [],
              classes:
                  'absolute inset-0 bg-gradient-to-r from-violet-600/20 to-fuchsia-600/20 blur-xl opacity-0 group-hover:opacity-100 transition-opacity duration-500',
            ),
            div(
              classes: 'h-full bg-[#121217]/90 backdrop-blur-xl rounded-[23px] p-6 border border-white/5',
              [
                h3(
                  classes: 'text-white font-semibold mb-6 flex items-center gap-2',
                  [
                    SquareTerminal(),
                    text('Core Expertise'),
                  ],
                ),
                ul(
                  classes: 'space-y-4',
                  [
                    for (var stat in [
                      (label: 'Architecture', val: 'Server Driven UI'),
                      (label: 'State Management', val: 'Flutter BLoC'),
                      (label: 'Learning', val: 'Jaspr'),
                      (label: 'Backend', val: 'Firebase & Node'),
                    ])
                      li(
                        classes: 'flex flex-col md:flex-row md:items-center md:justify-between text-sm border-b border-white/5 pb-3 last:border-0',
                        [
                          span([text(stat.label)], classes: 'text-gray-500 mb-1 md:mb-0'),
                          span([text(stat.val)],
                              classes: 'text-gray-200 font-medium'),
                        ],
                      ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
