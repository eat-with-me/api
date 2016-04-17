angular.module 'EatingApp'
 .controller 'NewOrderCtrl', ($http, $scope)->

    $http.get("/restaurants").success (data)->
      console.log(data)
      $scope.restaurants = data

    $scope.time = ''

    $scope.addRestaurant = (index) ->
      $scope.index = index
      $scope.selectedRestaurant = $scope.restaurants[$scope.index].id

    $scope.enableAcceptButton = ->
        if $scope.index > -1 && $scope.time
            return false
        else
            return true

