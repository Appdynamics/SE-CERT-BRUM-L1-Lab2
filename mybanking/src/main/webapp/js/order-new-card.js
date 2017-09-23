var app = angular.module('newCardApp', [
  'ngRoute'
]);

/**
 * Configure the Routes
 */
app.config(['$routeProvider', function ($routeProvider) {
  $routeProvider
    // Home
    .when("/", {templateUrl: "partials/order-new-card-step1.html", controller: "ShippingCtrl"})
    .when("/step1", {templateUrl: "partials/order-new-card-step1.html", controller: "ShippingCtrl"})
    // Pages
    .when("/step2", {templateUrl: "partials/order-new-card-step2.html", controller: "PageCtrl"})
    .when("/step3", {templateUrl: "partials/order-new-card-step3.html", controller: "PageCtrl"})
    // else 404
    .otherwise("/404", {templateUrl: "partials/404.html", controller: "PageCtrl"});
}]);

app.controller('ShippingCtrl', function ($scope, $http) {
  console.log("Shipping page");
  $http.get('/data/shipping-info');
});

/**
 * Controls all other Pages
 */
app.controller('PageCtrl', function (/* $scope, $location, $http */) {
  console.log("New page");
});