angular.module 'EatingApp'
  .controller 'MealsCtrl', ($http, $scope, $stateParams)->
   
    $scope.restaurantid = $stateParams.restaurantid

    $http.get("/restaurants/#{$stateParams.restaurantid}").success (data)->
        $scope.restaurant = data
        console.log(data)

