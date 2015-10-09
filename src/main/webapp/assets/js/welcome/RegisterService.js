'use strict';

/**
 * RegisterService
 */

MyApp.factory('RegisterService', ['$resource', '$http', function($resource, $http) {
    return new RegisterService($resource, $http);
}]);

function RegisterService(resource, http) {

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



    this.register =function(user,scope){
        http.post('register', user).success(function(data) {
            alert(data);
            alert("登录成功");
        }).error(function(data) {
            scope.setError('注册失败');
        });
    };
};