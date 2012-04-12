require('coffee-script');
"use strict";
var Coverage = require('./coverage')
var fs = require("fs")
// Simple function to ease file loading of source files so they get loaded up in the global scope
global.include = function(filename) {
  var src = fs.readFileSync(filename);
  require('vm').runInThisContext(src, filename);
}

if (process.env.COVERAGE) {
  include('src-covered/source.js')
  jessie.callbacks.bind('finish', function() {
    var report = new Coverage.Report()
    report.shortReport()
    if (process.env.LISTING) { 
      report.coverageListing()
    } else {
      console.log("Run with LISTING=true to see the coverage listing")
    }
  })
} else {
  include('src/source.js')
}

