'use strict';

/**
 * LoginController
 */
MyApp.controller('LoginController', ['LoginService', '$scope', '$location', '$routeParams', function(LoginService, $scope, $location, $routeParams) {

    $scope.serachUser = function(user) {
        LoginService.serachUser(user, $scope);
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