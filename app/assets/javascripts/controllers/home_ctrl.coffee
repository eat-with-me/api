angular.module 'EatingApp'
  .controller 'HomeCtrl', ($http, $scope)->
<<<<<<< 6738cfb325c6a0c7cd415c6c42d151b48643a9ce

    $scope.hello = "hello dzieniu"
    
    $http.get("/groups").success (data)->
    	console.log(data)

  .controller 'ChujCiwDupe',($http, $scope)->
  	$scope.message = "hellllllo dzieniu"
=======


>>>>>>> orderview
