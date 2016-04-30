angular.module 'EatingApp'
  .controller 'OrdersCtrl', ($http, $scope, $stateParams)->
    $scope.groupid = $stateParams.groupid
    console.log($scope.token)
    
    #$scope.assertTime = (closingTime) ->
    #closingTime.substring(11, 16)

    $scope.assertTime = (closingTime) ->
        closingTime = moment(closingTime, "YYYY-MM-DDTHH:mm:ss.SSS")
        closingTime = closingTime.format("D MMMM, HH:mm")

   	$http.get("/groups").success (dataToken)->
    	$scope.token =dataToken[$scope.groupid-1].token
    	
    $http.get("/groups/#{$stateParams.groupid}/orders").success (data)->
    	$scope.orders = data
