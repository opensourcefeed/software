(function () {
  var controls = document.querySelector('[data-directory-controls]');
  if (!controls) return;

  var searchInput = document.getElementById('directory-search');
  var typeChips = controls.querySelectorAll('[data-filter-type]');
  var categorySelect = controls.querySelector('[data-filter-category-select]');
  var countEl = controls.querySelector('[data-directory-count]');
  var emptyEl = document.querySelector('[data-directory-empty]');
  var adEl = document.querySelector('[data-directory-ad]');
  var extraEls = document.querySelectorAll('[data-directory-extra]');
  var list = document.querySelector('[data-directory-list]');
  var groups = document.querySelectorAll('[data-category-group]');
  var cards = list ? list.querySelectorAll('[data-software-card]') : [];

  // Long category groups start trimmed (CSS hides cards past the per-breakpoint
  // limit while .is-collapsible is set). "Show all" expands one group; any
  // active search or filter lifts the trim so every match is visible.
  groups.forEach(function (group) {
    var more = group.querySelector('[data-category-more]');
    if (!more) return;
    group.classList.add('is-collapsible');
    more.hidden = false;
    more.addEventListener('click', function () {
      group.classList.remove('is-collapsible');
      more.hidden = true;
      more.setAttribute('aria-expanded', 'true');
    });
  });

  var state = { query: '', type: 'all', category: 'all', selfHosted: false };
  var selfHostedChip = controls.querySelector('[data-filter-selfhosted]');

  function setActiveChip(chips, value) {
    chips.forEach(function (chip) {
      var chipValue = chip.getAttribute('data-filter-type');
      chip.classList.toggle('is-active', chipValue === value);
    });
  }

  function apply() {
    var visibleCount = 0;
    var query = state.query.trim().toLowerCase();

    cards.forEach(function (card) {
      var matchesQuery = !query ||
        card.getAttribute('data-title').indexOf(query) !== -1 ||
        card.getAttribute('data-tagline').indexOf(query) !== -1;
      var matchesType = state.type === 'all' || card.getAttribute('data-type') === state.type;
      var matchesCategory = state.category === 'all' || card.getAttribute('data-category') === state.category;
      var matchesSelfHosted = !state.selfHosted || card.getAttribute('data-self-hostable') === 'true';
      var visible = matchesQuery && matchesType && matchesCategory && matchesSelfHosted;

      card.hidden = !visible;
      if (visible) visibleCount++;
    });

    groups.forEach(function (group) {
      var hasVisibleCard = !!group.querySelector('[data-software-card]:not([hidden])');
      group.hidden = !hasVisibleCard;

      // Keep the category jump links in sync with what is visible
      var jump = document.querySelector('[data-category-jump="' + group.getAttribute('data-category-group') + '"]');
      if (jump) jump.hidden = !hasVisibleCard;
    });

    if (countEl) {
      countEl.textContent = visibleCount + (visibleCount === 1 ? ' tool found' : ' tools found');
    }
    if (emptyEl) {
      emptyEl.hidden = visibleCount !== 0;
    }
    var isFiltered = !!query || state.type !== 'all' || state.category !== 'all' || state.selfHosted;
    if (adEl) adEl.hidden = isFiltered;
    extraEls.forEach(function (el) { el.hidden = isFiltered; });
    if (list) list.classList.toggle('is-filtering', isFiltered);
  }

  if (selfHostedChip) {
    selfHostedChip.addEventListener('click', function () {
      state.selfHosted = !state.selfHosted;
      selfHostedChip.classList.toggle('is-active', state.selfHosted);
      selfHostedChip.setAttribute('aria-pressed', state.selfHosted ? 'true' : 'false');
      apply();
    });
  }

  if (searchInput) {
    searchInput.addEventListener('input', function (e) {
      state.query = e.target.value;
      apply();
    });
  }

  typeChips.forEach(function (chip) {
    chip.addEventListener('click', function () {
      state.type = chip.getAttribute('data-filter-type');
      setActiveChip(typeChips, state.type);
      apply();
    });
  });

  if (categorySelect) {
    categorySelect.addEventListener('change', function (e) {
      state.category = e.target.value;
      apply();
    });
  }

  apply();
})();
