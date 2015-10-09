'use strict';

/**
 * MyApp module
 */

var MyApp = angular.module('MyApp', ['ngRoute', 'ngResource']);

MyApp.config(['$routeProvider', function ($routeProvider, $compileProvider ,$controllerProvider) {

    MyApp.resolveScriptDeps = function(dependencies){
        return function($q,$rootScope){
            var deferred = $q.defer();
            $script(dependencies, function() {
                // all dependencies have now been loaded by $script.js so resolve the promise
                $rootScope.$apply(function()
                {
                    deferred.resolve();
                });
            });

            return deferred.promise;
        }
    };

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
        controller:'LoginController',
        resolve:{deps:MyApp.resolveScriptDeps([
            'assets/jquery/jquery_v1.6.2.js'
        ])}
    });

    $routeProvider.when('/register',{
        templateUrl:'register',
        controller:'RegisterController',
        resolve:{deps:MyApp.resolveScriptDeps([
            'assets/jquery/jquery_v1.6.2.js'
        ])}
    });

    $routeProvider.otherwise({redirectTo: '/trainsview'});
    
}]);
