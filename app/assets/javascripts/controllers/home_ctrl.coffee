	angular.module 'EatingApp'
  .controller 'HomeCtrl', ($http, $scope)->

    $scope.hello = "hello dzieniu"
    
    $http.get("/groups").success (data)->
    	console.log(data)

  .controller 'ChujCiwDupe',($http, $scope)->
  	$scope.message = "hellllllo dzieniu"
