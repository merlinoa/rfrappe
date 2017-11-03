HTMLWidgets.widget({

  name: "rfrappe",

  type: "output",

  factory: function(el, width, height) {

    return {
      renderValue: function(x) {
        // create our own frappe chart object and bind it to the element
        let frap = new Chart({
          parent: "#" + el.id,
          title: x.title,
          data: x.data,
          type: x.type
        });
      },
      resize: function(width, height) {
      },
    };
  }
});
