'use strict';

/**
 * MyApp module
 */

var MyApp = angular.module('MyApp', ['ngRoute', 'ngResource']);

MyApp.config(['$routeProvider', function ($routeProvider) {

    $routeProvider.when('/trainsview', {
        templateUrl: 'trains/trainsview',
        controller: 'TrainController'
    });
    
    $routeProvider.when('/trainupdate/:id', {
        templateUrl: 'trains/trainedit',
        controller: 'TrainUpdateController'
    });
    
    $routeProvider.when('/trainadd', {
        templateUrl: 'trains/trainedit',
        controller: 'TrainAddController'
    });

    $routeProvider.when('/login',{
        templateUrl:'login',
        controller:'LoginController'
    });
    $routeProvider.otherwise({redirectTo: '/trainsview'});
    
}]);
