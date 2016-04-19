angular.module 'EatingApp'
  .controller 'OrdersCtrl', ($http, $scope, $stateParams)->
    $scope.groupid = $stateParams.groupid
    

    $http.get("/groups/#{$stateParams.groupid}/orders").success (data)->
    	console.log(data)
    	$scope.orders = data
    	
    $scope.siema = ->

    #$scope.data1 = {restaurant_id : 10, closing_time : "13:00", group_id :1 }
    #$http.post("/groups/#{$stateParams.groupid}/orders", data1).success (data1, status) ->
    	