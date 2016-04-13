angular.module 'EatingApp'
  .controller 'MealsCtrl', ($http, $scope, $stateParams, $interval)->

    $scope.restaurantid = $stateParams.restaurantid

    $http.get("/restaurants/#{$stateParams.restaurantid}").success (data)->
       
        $scope.restaurant = data
        console.log(data)
        
    $scope.mealsList = []
    $scope.finalMealsList = []
    $scope.totalPrice = 0

    
    $scope.endTime = "23:59"
    $scope.timeRemaining = ""

    #TAJMER
    $scope.TimeLeft = ->
        $scope.timeRemaining = moment().to(moment($scope.endTime, "HH:mm"))
        $scope.duration = moment.duration(moment($scope.endTime, "HH:mm").diff(moment())).asHours()


    ##################angular.element($0).scope().moment############################

    d = new Date()

    $scope.in_hours =  0
    $scope.in_minutes = 0
    $scope.in_seconds = 0

    $scope.UpdateClock = ->
        tDate = new Date(new Date().getTime())
        $scope.in_hours =  tDate.getHours()
        $scope.in_minutes = tDate.getMinutes()
        $scope.in_seconds = tDate.getSeconds()

        if(in_minutes < 10)
            in_minutes = '0'+in_minutes
        if(in_seconds < 10)   
            in_seconds = '0'+in_seconds
        if(in_hours < 10) 
            in_hours = '0'+in_hours

    $interval($scope.TimeLeft, 500)

    #################################################

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
