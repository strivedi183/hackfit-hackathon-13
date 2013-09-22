// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

var app;

app = angular.module("FitU", ["ngResource"]);

app.factory("User", [
  "$resource", function($resource) {
    return $resource("/users/:id", {
      id: "@id"
    }, {
      update: {
        method: "PUT"
      }
    });
  }
]);

this.HomeCtrl = [
  "$scope", "User", function($scope, User) {
    $scope.users = User.query();
    $scope.addUser = function() {
      var user;
      user = User.save($scope.newUser);
      $scope.users.push(user);
      return $scope.newUser = {};
    };
    return $scope.drawWinner = function() {
      var user, pool;
      pool = [];
      angular.forEach($scope.entries, function(user) {
        if (!user.winner) {
          return pool.push(user);
        }
      });
      if (pool.length > 0) {
        user = pool[Math.floor(Math.random() * pool.length)];
        user.winner = true;
        user.$update();
        return $scope.lastWinner = user;
      }
    };
  }
];
