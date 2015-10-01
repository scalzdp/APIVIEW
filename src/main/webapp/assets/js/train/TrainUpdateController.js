'use strict';

/**
 *	TrainUpdateController
 */

MyApp.controller('TrainUpdateController', ['TrainService', '$scope', '$location', '$routeParams', function(TrainService, $scope, $location, $routeParams) {
    
    $scope.updateTrain = function(train) {
    	TrainService.updateTrain(train, $scope);
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
    
    $scope.editMode = true;
    TrainService.getTrainById($routeParams.id, $scope);
    $scope.resetError();
    
}]);