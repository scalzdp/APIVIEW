'use strict';

/**
 * TrainController
 */

MyApp.controller('TrainController', ['TrainService', '$scope', '$location', function(TrainService, $scope, $location) {
    
    $scope.queryTrainsList = function() {
    	TrainService.queryTrainsList($scope);
    };

    $scope.removeTrainById = function(id) {
    	TrainService.removeTrainById(id, $scope);
    };
    
    $scope.removeTrainsList = function() {
        TrainService.removeTrainsList($scope);
    };
    
    $scope.gotoTrainAdd = function() {
    	$location.path('/trainadd');
    };
    
    $scope.gotoTrainUpdate = function(id) {
    	$location.path('/trainupdate/' + id);
    };
    
    $scope.resetError = function() {
        $scope.error = false;
        $scope.errorMessage = '';
    };

    $scope.setError = function(message) {
        $scope.error = true;
        $scope.errorMessage = message;
    };
    
    // 自定义过滤器函数
    $scope.nameFilter = function(name) {
    	return function(train) {
    		return train.name.match(name);
    	};
    };
    
    $scope.dieselFilter = function(diesel) {
    	return function(train) {
    		if(diesel == false || diesel == null)
    			return true;
    		else 
    			return train.diesel == diesel;
    	};
    };
    
    $scope.speedMinFilter = function(speedMin) {
    	return function(train) {
    		if(speedMin == 0 || speedMin == null)
    			return true;
    		else
    			return train.speed >= speedMin;
    	};
    };
    
    $scope.speedMaxFilter = function(speedMax) {
    	return function(train) {
    		if(speedMax == 0 || speedMax == null)
    			return true;
    		else
    			return train.speed <= speedMax;
    	};
    };
    
    $scope.dateStartFilter = function(dateStart) {
    	return function(train) {
    		if(dateStart == null || dateStart == "")
    			return true;
    		else
    			return compareDate(train.date, dateStart) >= 0;
    	};
    };
    
    $scope.dateEndFilter = function(dateEnd) {
    	return function(train) {
    		if(dateEnd == null || dateEnd == "")
    			return true;
    		else
    			return compareDate(train.date, dateEnd) <= 0;
    	};
    };
    
    // yy-MM-dd格式时间比较函数
    var compareDate = function(trainDateStr, dateSelectedStr) {
    	var trainDateArray = trainDateStr.split("-");
    	var trainDate = new Date(trainDateArray[0], trainDateArray[1], trainDateArray[2]);
    	var trainTimes = trainDate.getTime();
    	
    	var dateSelectedArray = dateSelectedStr.split("-");
    	var dateSelectedDate = new Date(dateSelectedArray[0], dateSelectedArray[1], dateSelectedArray[2]);
    	var dateSelectedTimes = dateSelectedDate.getTime();
    	
    	return trainTimes - dateSelectedTimes;
    };
    
    $scope.prevPage = function() {
		if ($scope.currentPage > 0) {
			$scope.currentPage--;
		}
	};

	$scope.prevPageDisabled = function() {
		return $scope.currentPage == 0 ? "disabled" : "";
	};


	$scope.pageCount = function() {
		return Math.ceil($scope.trains.length / $scope.itemsPerPage);
	};

	$scope.setPage = function(page) {
		$scope.currentPage = page;
	};

	$scope.nextPage = function() {
		if ($scope.currentPage < $scope.pageCount()) {
			$scope.currentPage++; 
		}
	};

	$scope.nextPageDisabled = function() {
		return $scope.currentPage == $scope.pageCount() ? "disabled" : "";
	};
	
	$scope.getPagesNumber = function() {
		var pages = [];
		for(var i = 0; i < $scope.pageCount(); i++) {
			pages.push(i);
		};
		
		return pages;
	};
	
	$scope.itemsPerPage = 3;
    $scope.currentPage = 0;
    $scope.predicate = 'id';
    $scope.queryTrainsList();
    $scope.resetError();
    
}]);
