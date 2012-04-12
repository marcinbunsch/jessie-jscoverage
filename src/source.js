var Something = function() {
  this.property = 100;
}

Something.prototype.thisFunctionIsTested = function() {
  return 123;
};

Something.prototype.thisFunctionIsNotTested = function() {
  return "NOT"
};

