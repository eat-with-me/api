angular.module 'EatingApp'
  .controller 'MealsCtrl', ($http, $scope, $stateParams, $interval)->
   
    $scope.orderid = $stateParams.orderid
    $scope.groupid = $stateParams.groupid
    #ALERT WHEN USER CHCE CLOSE WINDOW------------------------------
    $scope.$on '$stateChangeStart', (event) ->
      answer = confirm('Are you sure you want to leave this page?')
      if !answer
        event.preventDefault()
    
    window.onbeforeunload = (event) ->
      message = 'Sure you want to leave?'
      if typeof event == 'undefined'
        event = window.event
      if event
        event.returnValue = message
      return message
    #---------------------------------------------------------------

    $http.get("/groups/#{$stateParams.groupid}/orders/#{$stateParams.orderid}").success (data)->
        $scope.restaurantname = data.restaurant.name
        $scope.meals = data.restaurant.meals
        $scope.endTime = data.closing_time.toString().substring(11, 16)

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

    $scope.removeMeal = (mealNumber) ->
        $scope.totalPrice = $scope.totalPrice - $scope.mealsList[mealNumber].price
        $scope.mealsList.splice(mealNumber, 1);

    $scope.clearMeal = ->
        $scope.totalPrice = 0
        $scope.mealsList = []

    $scope.showOrder = ->
        for i in [0...$scope.mealsList.length]
            $scope.finalMealsList[i] = $scope.mealsList[i].id
        alert("Rzeczy do zamówienia: " + "\n"+ "\n" +$scope.finalMealsList + "\n" + "\n"+ "\n"+ "Cena ogólna: " + $scope.totalPrice+"zł") 
        console.log($scope.finalMealsList)
        #zaczety post do zamowienia----------------------------------
        data1 = {order : { id : $scope.orderid, meals : $scope.finalMealsList } }
        $http.post("/groups/#{$stateParams.groupid}/purchasers", data1).success (data2, status) ->
          console.log(data2)
        #-----------------------------------------------
        $scope.finalMealsList = []
        $scope.mealsList = []
        $scope.totalPrice = 0

    $scope.enableAcceptButton = ->
        if $scope.mealsList.length>0
            return false
        else
            return true
