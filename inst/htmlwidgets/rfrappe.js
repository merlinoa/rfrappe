HTMLWidgets.widget({

  name: "rfrappe",

  type: "output",

  factory: function(el, width, height) {

    let frap = { parent: "#" + el.id };

    return {
      renderValue: function(x) {
        // create our own frappe chart object and bind it to el
        for (var name in x) {
          frap[name] = x[name];
        }
        frap = new Chart(frap);
      },
      resize: function(width, height) {
      },
      // return htmlwidget object to be used by e.g. htmlwidgets::onRender()
      f: frap
    };
  }
});
