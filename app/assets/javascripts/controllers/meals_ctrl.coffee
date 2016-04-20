angular.module 'EatingApp'
  .controller 'MealsCtrl', ($http, $scope, $stateParams, $interval)->
   
    $scope.orderid = $stateParams.orderid
    #console.log($stateParams)
    

    $http.get("/groups/#{$stateParams.groupid}/orders/#{$stateParams.orderid}").success (data)->
        $scope.restaurantname = data.restaurant.name
        $scope.meals = data.restaurant.meal
        $scope.endTime = data.closing_time.toString().substring(11, 16)
        console.log(data)

    $scope.mealsList = []
    $scope.finalMealsList = []
    $scope.totalPrice = 0


    #$scope.endTime = "16:00"
    $scope.timeRemaining = ""

    #TAJMER
    $scope.updateTime = ->
        $scope.timeRemaining = moment().to(moment($scope.endTime, "HH:mm"))
        $scope.duration = moment.duration(moment($scope.endTime, "HH:mm").diff(moment())).asHours()

    $interval($scope.updateTime, 500)

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

    $scope.enableAcceptButton = ->
        if $scope.mealsList.length>0
            return false
        else
            return true