angular.module 'EatingApp'
  .controller 'OrdersCtrl', ($http, $scope, $stateParams)->
    $scope.groupid = $stateParams.groupid
    console.log($scope.token)
    $scope.assertTime = (closingTime) ->
    	closingTime.toString()
    	closingTime.substring(11, 16)
	   
   	$http.get("/groups").success (dataToken)->
    	$scope.token =dataToken[$scope.groupid-1].token
    	
    $http.get("/groups/#{$stateParams.groupid}/orders").success (data)->
    	$scope.orders = data
