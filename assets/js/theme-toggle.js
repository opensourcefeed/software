(function () {
  var STORAGE_KEY = 'osf-theme';
  var button = document.querySelector('[data-theme-toggle]');
  if (!button) return;

  function systemPrefersDark() {
    return window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches;
  }

  function currentTheme() {
    var explicit = document.documentElement.getAttribute('data-theme');
    if (explicit === 'light' || explicit === 'dark') return explicit;
    return systemPrefersDark() ? 'dark' : 'light';
  }

  function updateButton(theme) {
    var isDark = theme === 'dark';
    button.setAttribute('aria-pressed', String(isDark));
    button.setAttribute('aria-label', isDark ? 'Switch to light theme' : 'Switch to dark theme');
  }

  updateButton(currentTheme());

  button.addEventListener('click', function () {
    var next = currentTheme() === 'dark' ? 'light' : 'dark';
    document.documentElement.setAttribute('data-theme', next);
    try {
      localStorage.setItem(STORAGE_KEY, next);
    } catch (e) {}
    updateButton(next);
  });
})();
