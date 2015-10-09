'use strict';
/**
 * RegisterController
 */
MyApp.controller('RegisterController', ['RegisterService', '$scope', '$location', '$routeParams', function(RegisterService, $scope, $location, $routeParams) {

    $scope.register=function(user){
        RegisterService.register(user,$scope)
    };

    $scope.resetError = function() {
        $scope.error = false;
        $scope.errorMessage = '';
    };

    $scope.setError = function(message) {
        $scope.error = true;
        $scope.errorMessage = message;
    };
    $scope.editMode = false;
    $scope.user = {};
    $scope.resetError();
}]);