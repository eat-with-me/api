angular.module 'EatingApp'
  .controller 'NewOrderCtrl', ($http, $scope)->

  	$http.get("/restaurants").success (data)->
    	console.log(data)
    	$scope.restaurants = data