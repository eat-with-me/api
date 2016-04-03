angular.module 'EatingApp'
  .controller 'MealsCtrl', ($http, $scope, $stateParams)->
   
    $scope.restaurantid = $stateParams.restaurantid

    $http.get("/restaurants/#{$stateParams.restaurantid}").success (data)->
        $scope.restaurant = data
        console.log(data)
        
        $scope.todoList = []
        $scope.arr = []


        $scope.sum = 0
        $scope.addMeal = (war) ->
            $scope.sum = $scope.sum + war.price
            $scope.todoList.push(war)
            console.log($scope.todoList)

        $scope.removeMeal = (war) ->
            $scope.sum = $scope.sum - $scope.todoList[war].price
            $scope.todoList.splice(war, 1);
            console.log($scope.todoList)

        $scope.clearMeal = ->
            $scope.sum = 0
            $scope.todoList = []

        $scope.showAlert = ->
            console.log($scope.todoList)
            $scope.arr = JSON.stringify($scope.todoList)
            alert(JSON.stringify($scope.arr))
            
