angular.module 'EatingApp'
  .controller 'OrdersCtrl', ($http, $scope, $stateParams)->
    $scope.groupid = $stateParams.groupid
    $http.get("/groups/#{$stateParams.groupid}/orders").success (data)->
    	console.log(data)
    	$scope.orders = data

