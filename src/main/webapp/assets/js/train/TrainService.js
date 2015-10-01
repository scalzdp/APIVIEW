'use strict';

/**
 * TrainService
 */

MyApp.factory('TrainService', ['$resource', '$http', function($resource, $http) {
	return new TrainService($resource, $http);
}]);

function TrainService(resource, http) {
 
	var actions = {
		'get':{
			method:'GET',
		},
		'query':{
            method:'GET',
            isArray:true
        },
        'save':{
            method:'POST',
            isArray:true,
        },
        'update':{
            method:'PUT',
            isArray:true,
        },
        'remove':{
            method:'DELETE',
            isArray:true
        }
    };
	
	this.getTrainById = function(id, scope) {
		scope.resetError();
		
		var TrainResource = resource('trains/getTrainById/:id', {}, actions);
		TrainResource.get({id:id}, function(data) {
			scope.train = data;
		}, function(error) {
			scope.setError('无法查询火车编号：' + id);
		});
		
//		http.get('trains/getTrainById/' + id).success(function(data) {
//			scope.train = data;
//	    }).error(function(data) {
//	    	scope.setError('无法查询火车编号：' + id);
//	    });
	};

	this.queryTrainsList = function(scope) {
		scope.resetError();
		
		var TrainResource = resource('trains/queryTrainsList', {}, actions);
		TrainResource.query({}, function(data) {
			scope.trains = data;
		}, function(error) {
			scope.setError('无法查询火车列表');
		});
		
//		http.get('trains/queryTrainsList').success(function(data) {
//			scope.trains = data;
//	    }).error(function(data) {
//	    	scope.setError('无法查询火车列表');
//	    });
	};
	
	this.saveTrain = function(train, scope) {
		scope.resetError();
		
		var TrainResource = resource('trains/saveTrain', {}, actions);
		TrainResource.save(train, function(data) {
			scope.gotoTrainsView();
		}, function(error) {
			scope.setError('无法添加新的火车');
		});
		
//		http.post('trains/saveTrain', train).success(function(data) {
//			scope.gotoTrainsView();
//	    }).error(function(data) {
//	    	scope.setError('无法添加新的火车');
//	    });
	};
	
	this.updateTrain = function(train, scope) {
		scope.resetError();
		
		var TrainResource = resource('trains/updateTrain', {}, actions);
		TrainResource.update(train, function(data) {
			scope.gotoTrainsView();
		}, function(error) {
			scope.setError('无法更新当前火车');
		});
		
//		http.put('trains/updateTrain', train).success(function(data) {
//			scope.gotoTrainsView();
//	    }).error(function(data) {
//	    	scope.setError('无法更新当前火车');
//	    });
		
	};
	
	this.removeTrainById = function(id, scope) {
		scope.resetError();
		
		var TrainResource = resource('trains/removeTrainById/' + id, {}, actions);
		TrainResource.remove(id, function(data) {
			scope.queryTrainsList();
		}, function(error) {
			scope.setError('无法删除火车编号： ' + id);
		});
		
//		http.delete('trains/removeTrainById/' + id).success(function(data) {
//			scope.queryTrainsList();
//	    }).error(function(data) {
//	    	scope.setError('无法删除火车编号： ' + id);
//	    });
	};
	
	this.removeTrainsList = function(scope) {
		scope.resetError();
		
		var TrainResource = resource('trains/removeTrainsList', {}, actions);
		TrainResource.remove({}, function(data) {
			scope.queryTrainsList();
		}, function(error) {
			scope.setError('无法删除全部火车');
		});
		
//		http.delete('trains/removeTrainsList').success(function(data) {
//			scope.queryTrainsList();
//	    }).error(function(data) {
//	    	scope.setError('无法删除全部火车');
//	    });
	};
	
};