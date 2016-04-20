angular.module 'EatingApp'
  .controller 'OrdersCtrl', ($http, $scope, $stateParams)->
    $scope.groupid = $stateParams.groupid
    
    $scope.assertTime = (closingTime) ->
    	closingTime.toString()
    	closingTime.substring(11, 19)
	   

    $http.get("/groups/#{$stateParams.groupid}/orders").success (data)->
    	console.log(data)
    	$scope.orders = data