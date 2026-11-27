// Shrinks the sticky site header once the page is scrolled (.is-compact) and
// restores the full size at the top. Two thresholds (hysteresis) stop the
// header from flickering: shrinking it shortens the page by a few pixels,
// which would otherwise push the scroll position back across a single limit.
(function () {
  var header = document.querySelector('.site-header');
  if (!header) return;

  var COMPACT_AT = 80; // px scrolled before the header shrinks
  var EXPAND_AT = 8;   // px from the top before it grows back
  var ticking = false;

  function update() {
    ticking = false;
    var y = window.pageYOffset || document.documentElement.scrollTop;
    var compact = header.classList.contains('is-compact');
    if (!compact && y > COMPACT_AT) {
      header.classList.add('is-compact');
    } else if (compact && y < EXPAND_AT) {
      header.classList.remove('is-compact');
    }
  }

  window.addEventListener('scroll', function () {
    if (!ticking) {
      ticking = true;
      window.requestAnimationFrame(update);
    }
  }, { passive: true });

  // Pages restored mid-scroll (back button, anchor links) start compact
  update();
})();
