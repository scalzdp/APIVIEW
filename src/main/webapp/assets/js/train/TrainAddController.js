'use strict';

/**
 *	TrainAddController
 */

MyApp.controller('TrainAddController', ['TrainService', '$scope', '$location', function(TrainService, $scope, $location) {
    
	$scope.saveTrain = function(train) {
        TrainService.saveTrain(train, $scope);
    };
    
    $scope.gotoTrainsView = function() {
    	$location.path('/trainsview');
    };
    
    $scope.resetTrainForm = function() {
        $scope.train = {};
        $scope.resetError();
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
    $scope.train = {};
    $scope.resetError();
    
}]);