angular.module 'EatingApp'
  .controller 'OrdersCtrl', ($http, $scope, $stateParams)->
    $scope.groupid = $stateParams.groupid
    

    $http.get("/groups/#{$stateParams.groupid}/orders").success (data)->
    	console.log(data)
    	$scope.orders = data
    
    $scope.siema = ->
      data1 = {restaurant_id : 15, closing_time : "13:00", group_id : $stateParams.groupid }
      $http.post("/groups/#{$stateParams.groupid}/orders", data1).success (data1, status) ->
        alert("Ambaras!")

    #$scope.data1 = {restaurant_id : 10, closing_time : "13:00", group_id :1 }
    #$http.post("/groups/#{$stateParams.groupid}/orders", data1).success (data1, status) ->
    #id":17,"closing_time":"2000-01-01T13:00:00.000Z","restaurant_id":15,