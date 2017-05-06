$(document).on('ready turbolinks:load', function () {
  var opts = {
    angle: -0.2, // The span of the gauge arc
    lineWidth: 0.2, // The line thickness
    radiusScale: 1, // Relative radius
    pointer: {
      length: 0.6, // // Relative to gauge radius
      strokeWidth: 0.035, // The thickness
      color: '#000000' // Fill color
    },
    limitMax: false,     // If false, the max value of the gauge will be updated if value surpass max
    limitMin: false,     // If true, the min value of the gauge will be fixed unless you set it manually
    colorStart: '#6FADCF',   // Colors
    colorStop: '#8FC0DA',    // just experiment with them
    strokeColor: '#E0E0E0',  // to see which ones work best for you
    generateGradient: true,
    highDpiSupport: true     // High resolution support
  };
  var target = document.getElementById('gauge'); // your canvas element

  // var percentage = document.getElementById('main-gauge-value1');
  // var currentValue = document.getElementById('main-gauge-value2');

  if (target === null)
    return

  var gauge = new Gauge(target).setOptions(opts); // create sexy gauge!
  gauge.maxValue = 3000; // set max gauge value
  gauge.setMinValue(0);  // Prefer setter over gauge.minValue = 0
  gauge.animationSpeed = 135; // set animation speed (32 is default value)
  gauge.set(1250); // set actual value
  // percentage.innerText = (Math.floor(1250 * 100 / 3000)).toString() + "%" ;

  // current = 0; 

  // var interval = setInterval(function () {
  //   currentValue.innerText = current.toString();
  //   current++;
  //   if (current == 1251)
  //     clearInterval(interval);
  // }, 3);


  var opts = {
    angle: -0.2, // The span of the gauge arc
    lineWidth: 0.2, // The line thickness
    radiusScale: 1, // Relative radius
    pointer: {
      length: 0.6, // // Relative to gauge radius
      strokeWidth: 0.035, // The thickness
      color: '#000000' // Fill color
    },
    limitMax: false,     // If false, the max value of the gauge will be updated if value surpass max
    limitMin: false,     // If true, the min value of the gauge will be fixed unless you set it manually
    colorStart: '#FFADCF',   // Colors
    colorStop: '#DADA45',    // just experiment with them
    strokeColor: '#E0E0E0',  // to see which ones work best for you
    generateGradient: true,
    highDpiSupport: true     // High resolution support
  };
  var target = document.getElementById('gauge-low'); // your canvas element

  // var percentage = document.getElementById('main-gauge-value1');
  // var currentValue = document.getElementById('main-gauge-value2');

  if (target === null)
    return

  var gauge = new Gauge(target).setOptions(opts); // create sexy gauge!
  gauge.maxValue = 3000; // set max gauge value
  gauge.setMinValue(0);  // Prefer setter over gauge.minValue = 0
  gauge.animationSpeed = 135; // set animation speed (32 is default value)
  gauge.set(850); // set actual value
  // percentage.innerText = (Math.floor(1250 * 100 / 3000)).toString() + "%" ;

  // current = 0; 

  // var interval = setInterval(function () {
  //   currentValue.innerText = current.toString();
  //   current++;
  //   if (current == 1251)
  //     clearInterval(interval);
  // }, 3);



  var opts = {
    angle: -0.2, // The span of the gauge arc
    lineWidth: 0.2, // The line thickness
    radiusScale: 1, // Relative radius
    pointer: {
      length: 0.6, // // Relative to gauge radius
      strokeWidth: 0.035, // The thickness
      color: '#000000' // Fill color
    },
    limitMax: false,     // If false, the max value of the gauge will be updated if value surpass max
    limitMin: false,     // If true, the min value of the gauge will be fixed unless you set it manually
    colorStart: '#FFADCF',   // Colors
    colorStop: 'orange',    // just experiment with them
    strokeColor: '#E0E0E0',  // to see which ones work best for you
    generateGradient: true,
    highDpiSupport: true     // High resolution support
  };
  var target = document.getElementById('gauge-medium'); // your canvas element

  // var percentage = document.getElementById('main-gauge-value1');
  // var currentValue = document.getElementById('main-gauge-value2');

  if (target === null)
    return

  var gauge = new Gauge(target).setOptions(opts); // create sexy gauge!
  gauge.maxValue = 3000; // set max gauge value
  gauge.setMinValue(0);  // Prefer setter over gauge.minValue = 0
  gauge.animationSpeed = 135; // set animation speed (32 is default value)
  gauge.set(2100); // set actual value
  // percentage.innerText = (Math.floor(1250 * 100 / 3000)).toString() + "%" ;

  // current = 0; 

  // var interval = setInterval(function () {
  //   currentValue.innerText = current.toString();
  //   current++;
  //   if (current == 1251)
  //     clearInterval(interval);
  // }, 3);



  var opts = {
    angle: -0.2, // The span of the gauge arc
    lineWidth: 0.2, // The line thickness
    radiusScale: 1, // Relative radius
    pointer: {
      length: 0.6, // // Relative to gauge radius
      strokeWidth: 0.035, // The thickness
      color: '#000000' // Fill color
    },
    limitMax: false,     // If false, the max value of the gauge will be updated if value surpass max
    limitMin: false,     // If true, the min value of the gauge will be fixed unless you set it manually
    colorStart: '#FFADCF',   // Colors
    colorStop: 'red',    // just experiment with them
    strokeColor: '#E0E0E0',  // to see which ones work best for you
    generateGradient: true,
    highDpiSupport: true     // High resolution support
  };
  var target = document.getElementById('gauge-high'); // your canvas element

  // var percentage = document.getElementById('main-gauge-value1');
  // var currentValue = document.getElementById('main-gauge-value2');

  if (target === null)
    return

  var gauge = new Gauge(target).setOptions(opts); // create sexy gauge!
  gauge.maxValue = 3000; // set max gauge value
  gauge.setMinValue(0);  // Prefer setter over gauge.minValue = 0
  gauge.animationSpeed = 135; // set animation speed (32 is default value)
  gauge.set(2100); // set actual value
  // percentage.innerText = (Math.floor(1250 * 100 / 3000)).toString() + "%" ;

  // current = 0; 

  // var interval = setInterval(function () {
  //   currentValue.innerText = current.toString();
  //   current++;
  //   if (current == 1251)
  //     clearInterval(interval);
  // }, 3);
});
