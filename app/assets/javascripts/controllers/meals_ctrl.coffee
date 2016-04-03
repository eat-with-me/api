angular.module 'EatingApp'
  .controller 'MealsCtrl', ($http, $scope, $stateParams)->
   
    $scope.restaurantid = $stateParams.restaurantid

    $http.get("/restaurants/#{$stateParams.restaurantid}").success (data)->
        $scope.restaurant = data
        console.log(data)
        
        $scope.todoList = []
        $scope.arr = []
        $scope.sar = []


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
            for i in [0...$scope.todoList.length]
                $scope.sar[i] = $scope.todoList[i].name
            console.log($scope.arr)
            alert("Rzeczy do zamówienia: " + "\n"+ "\n" +$scope.sar + "\n" + "\n"+ "\n"+ "Cena ogólna: " + $scope.sum+"$") 
            
