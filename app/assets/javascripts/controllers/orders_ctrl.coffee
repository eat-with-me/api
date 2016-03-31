angular.module 'EatingApp'
  .controller 'OrdersCtrl', ($http, $scope, $stateParams)->

    $http.get("/groups/#{$stateParams.groupid}/orders").success (data)->
    	console.log(data)
    	$scope.groups = data
