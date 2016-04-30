angular.module 'EatingApp'
  .controller 'OrdersCtrl', ($http, $scope, $stateParams, $rootElement, $location)->
    $scope.groupid = $stateParams.groupid
    
    $scope.hostt = location.host;
    $scope.protocoll = $location.protocol()

    $scope.assertTime = (closingTime) ->
        closingTime = moment(closingTime, "YYYY-MM-DDTHH:mm:ss.SSS")
        closingTime = closingTime.format("D MMMM, HH:mm")
	   
    $http.get("/groups").success (data1)->
      $scope.users = data1[$scope.groupid-1].users
      console.log($scope.users)
      $scope.token =data1[$scope.groupid-1].token
      $scope.groupName =data1[$scope.groupid-1].name
      $scope.tokenURL = $scope.protocoll + "://" +$scope.hostt + "/join/" + $scope.token


    $http.get("/groups/#{$stateParams.groupid}/orders").success (data)->
    	$scope.orders = data

    $scope.getLink = ->
      swal
        title: "Link do grupy!"
        text: "Niech Twoi znajomi też w niej będą :)"
        type: "input"
        imageUrl: "/useradd.png"
        showCancelButton: false
        closeOnConfirm: false
        confirmButtonColor: "#00FF33"
        inputValue: $scope.tokenURL
