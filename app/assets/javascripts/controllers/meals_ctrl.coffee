angular.module 'EatingApp'
  .controller 'MealsCtrl', ($http, $scope, $stateParams)->
   
    $scope.restaurantid = $stateParams.restaurantid

    $http.get("/restaurants/#{$stateParams.restaurantid}").success (data)->
        $scope.restaurant = data
        console.log(data)
        
        $scope.mealsList = []
        $scope.finalMealsList = []


        $scope.totalPrice = 0
        $scope.addMeal = (mealNumber) ->
            $scope.totalPrice = $scope.totalPrice + mealNumber.price
            $scope.mealsList.push(mealNumber)
            console.log($scope.mealsList)

        $scope.removeMeal = (mealNumber) ->
            $scope.totalPrice = $scope.totalPrice - $scope.mealsList[mealNumber].price
            $scope.mealsList.splice(mealNumber, 1);
            console.log($scope.mealsList)

        $scope.clearMeal = ->
            $scope.totalPrice = 0
            $scope.mealsList = []

        $scope.showOrder = ->
            for i in [0...$scope.mealsList.length]
                $scope.finalMealsList[i] = $scope.mealsList[i].name
            alert("Rzeczy do zamówienia: " + "\n"+ "\n" +$scope.finalMealsList + "\n" + "\n"+ "\n"+ "Cena ogólna: " + $scope.totalPrice+"zł") 
            $scope.finalMealsList = []
            $scope.mealsList = []
            $scope.totalPrice = 0
