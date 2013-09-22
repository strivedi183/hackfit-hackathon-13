# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

var app;

app = angular.module("FitU", ["ngResource"]);

app.factory("Entry", [
  "$resource", function($resource) {
    return $resource("/entries/:id", {
      id: "@id"
    }, {
      update: {
        method: "PUT"
      }
    });
  }
]);

this.HomeCtrl = [
  "$scope", "Entry", function($scope, Entry) {
    $scope.entries = Entry.query();
    $scope.addEntry = function() {
      var entry;
      entry = Entry.save($scope.newEntry);
      $scope.entries.push(entry);
      return $scope.newEntry = {};
    };
    return $scope.drawWinner = function() {
      var entry, pool;
      pool = [];
      angular.forEach($scope.entries, function(entry) {
        if (!entry.winner) {
          return pool.push(entry);
        }
      });
      if (pool.length > 0) {
        entry = pool[Math.floor(Math.random() * pool.length)];
        entry.winner = true;
        entry.$update();
        return $scope.lastWinner = entry;
      }
    };
  }
];
