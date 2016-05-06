angular.module 'EatingApp'
  .controller 'MealsCtrl', ($http, $scope, $stateParams, $interval)->
   
    $scope.orderid = $stateParams.orderid
    $scope.groupid = $stateParams.groupid
    $scope.hideActionPanel=false
    
    #ALERT WHEN USER CHCE CLOSE WINDOW------------------------------
    $scope.$on '$stateChangeStart', (event) ->
      if $scope.mealsList.length !=0
        answer = confirm('Masz niezapisane rzeczy w koszyku. Na pewno chcesz wyjść?')
        if !answer
          event.preventDefault()
    
    window.onbeforeunload = (event) ->
      if $scope.mealsList.length !=0
        message = 'Masz niezapisane rzeczy w koszyku. Na pewno chcesz wyjść?'
        if typeof event == 'undefined'
          event = window.event
        if event 
          event.returnValue = message
        return message
    #----------------------------------------------------------------

    $http.get("/groups/#{$stateParams.groupid}/orders/#{$stateParams.orderid}").success (data)->
        $scope.restaurantname = data.restaurant.name
        $scope.meals = data.restaurant.meals
        $scope.endTime = moment(data.closing_time,"YYYY-MM-DDTHH:mm:ss.SSSZ")
        $scope.zamowienia = data.purchasers

    $scope.mealsList = []
    $scope.totalPrice = 0
    $scope.end = 0

    
    #TAJMER
    $scope.updateTime = ->
      if $scope.endTime.isBefore(moment())
        $scope.timeRemaining = "ZAKOŃCZONE"
        $scope.divStyle =
          background : "gray"
        $scope.hideActionPanel=true

      else 
        $scope.timeRemaining = moment().to($scope.endTime)
        $scope.duration = moment.duration($scope.endTime.diff(moment())).asHours()
        if $scope.endTime - moment() < 600000 && $scope.end == 0
          $scope.divStyle =
            background : "darkorange"
          swal
            title: "Ambaras!"
            text: "Zostało 10 minut na składanie zamówień"
            type: "warning"
            showCancelButton: false
            closeOnConfirm: false
            confirmButtonColor: "#00FF33"
          $scope.end=1

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

    map = (array, fn) ->
      result = []
      i = 0
      while i < array.length
        result.push fn(array[i])
        ++i
      return result

    $scope.showOrder = ->
        mealsObjTab = map($scope.mealsList, (meal) ->
          meal_id: meal.id
          amount: meal.amount
        )
        
        data1 = {order : { id : $scope.orderid, meals : mealsObjTab} }
        $http.post("/groups/#{$stateParams.groupid}/purchasers", data1).success (data2, status) ->
          $scope.chujsa.push(data2)
        sweetAlert("Twoja lista posiłków została dodana!", "Odpręż się i czekaj! :)", "success")
        
        $scope.mealsList = []
        $scope.totalPrice = 0

    $scope.enableAcceptButton = ->
        if $scope.mealsList.length>0
            return false
        else
            return true