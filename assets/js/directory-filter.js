(function () {
  var controls = document.querySelector('[data-directory-controls]');
  if (!controls) return;

  var searchInput = document.getElementById('directory-search');
  var typeChips = controls.querySelectorAll('[data-filter-type]');
  var categorySelect = controls.querySelector('[data-filter-category-select]');
  var countEl = controls.querySelector('[data-directory-count]');
  var emptyEl = document.querySelector('[data-directory-empty]');
  var groups = document.querySelectorAll('[data-category-group]');
  var cards = document.querySelectorAll('[data-software-card]');

  var state = { query: '', type: 'all', category: 'all' };

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
      var visible = matchesQuery && matchesType && matchesCategory;

      card.hidden = !visible;
      if (visible) visibleCount++;
    });

    groups.forEach(function (group) {
      var hasVisibleCard = !!group.querySelector('[data-software-card]:not([hidden])');
      group.hidden = !hasVisibleCard;
    });

    if (countEl) {
      countEl.textContent = visibleCount + (visibleCount === 1 ? ' tool found' : ' tools found');
    }
    if (emptyEl) {
      emptyEl.hidden = visibleCount !== 0;
    }
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
