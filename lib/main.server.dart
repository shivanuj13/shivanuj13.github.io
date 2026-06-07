import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';
import 'app.dart';
import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  runApp(
    Document(
      title: 'Anuj Kumar',
      head: [
        script(
          content: '''
(function () {
  var KEY = 'theme';
  function resolveTheme() {
    var stored = localStorage.getItem(KEY);
    if (stored === 'dark' || stored === 'light') return stored;
    return matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light';
  }
  function applyTheme(theme) {
    var root = document.documentElement;
    root.classList.remove('dark');
    root.classList.remove('light');
    root.classList.add(theme);
    root.setAttribute('data-theme', theme);
  }
  function toggleTheme() {
    var current = document.documentElement.classList.contains('light') ? 'light' : 'dark';
    var next = current === 'dark' ? 'light' : 'dark';
    localStorage.setItem(KEY, next);
    applyTheme(next);
  }
  function setMobileMenuOpen(open) {
    var panel = document.getElementById('mobile-menu');
    var btn = document.getElementById('mobile-menu-toggle');
    if (!panel || !btn) return;
    panel.classList.toggle('is-open', open);
    btn.setAttribute('aria-expanded', open ? 'true' : 'false');
  }
  function handleClick(event) {
    var themeBtn = event.target.closest('#theme-toggle');
    if (themeBtn) {
      event.preventDefault();
      event.stopPropagation();
      toggleTheme();
      return;
    }
    var menuBtn = event.target.closest('#mobile-menu-toggle');
    if (menuBtn) {
      event.preventDefault();
      event.stopPropagation();
      var panel = document.getElementById('mobile-menu');
      setMobileMenuOpen(!panel.classList.contains('is-open'));
      return;
    }
    var menuLink = event.target.closest('#mobile-menu a[href^="#"]');
    if (menuLink) {
      setMobileMenuOpen(false);
    }
  }
  applyTheme(resolveTheme());
  document.addEventListener('click', handleClick, true);
})();
''',
        ),
        link(
          href: 'https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Manrope:wght@400;500;600;700&display=swap',
          rel: 'stylesheet',
        ),
        link(href: 'styles.css', rel: 'stylesheet'),
      ],
      styles: [
        css('html, body').styles(
          width: 100.percent,
          minHeight: 100.vh,
          padding: Padding.zero,
          margin: Margin.zero,
        ),
      ],
      body: App(),
    ),
  );
}
