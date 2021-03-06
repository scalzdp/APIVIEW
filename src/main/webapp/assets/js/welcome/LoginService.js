'use strict';

/**
 * LoginService
 */

MyApp.factory('LoginService', ['$resource', '$http', function($resource, $http) {
    return new LoginService($resource, $http);
}]);

function LoginService(resource, http) {

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

    this.serachUser = function(user, scope) {
        scope.resetError();

        var LoginResource = resource('login', {}, actions);
        LoginResource.query(user, function(data) {
            scope.gotoLoginView();
        }, function(error) {
            scope.setError('无法更新当前火车');
        });
    };

    this.login =function(user,scope){
        //scope.resetError();
        //var LoginResource = resource('login', {}, actions);
        //LoginResource.query(user,"POST", function(data) {
        //    scope.gotoLoginView();
        //}, function(error) {
        //    scope.setError('无法更新当前火车');
        //});
        http.post('login', user).success(function(data) {
			//scope.gotoTrainsView();
            alert(data);
            alert("登录成功");
    }).error(function(data) {
        scope.setError('无法添加新的火车');
    });
    };
};