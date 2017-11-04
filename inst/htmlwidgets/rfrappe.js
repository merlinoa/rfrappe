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
        new Chart(frap);
      },
      resize: function(width, height) {
      },
    };
  }
});
