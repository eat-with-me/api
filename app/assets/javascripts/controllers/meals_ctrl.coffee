angular.module 'EatingApp'
  .controller 'MealsCtrl', ($http, $scope, $stateParams, $interval)->
   
    $scope.orderid = $stateParams.orderid
    $scope.groupid = $stateParams.groupid
    $scope.hideActionPanel=false
    $scope.hideIfAlreadyOrder=false
    $scope.endStyle = 
    
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
        $scope.ownerr = data.owner.id
        $scope.shippingCostPerPerson = data.restaurant.shipping_cost
        $scope.iloscChlopa = $scope.zamowienia.length
        $scope.priceNow = $scope.shippingCostPerPerson/$scope.iloscChlopa
        
        if $scope.iloscChlopa == 0
          $scope.priceNow = $scope.shippingCostPerPerson/($scope.iloscChlopa+1)
          $scope.priceAfter = $scope.shippingCostPerPerson/($scope.iloscChlopa+1)
        else if $scope.iloscChlopa > 0
          $scope.iloscChlopa = $scope.zamowienia.length
          $scope.priceAfter = $scope.shippingCostPerPerson/($scope.iloscChlopa+1)

        for i in [0...$scope.zamowienia.length]
            if $scope.zamowienia[i].user_id == $scope.ownerr
              $scope.hideIfAlreadyOrder = true

        console.log $scope.zamowienia
        
        console.log($scope.ownerr)

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
            title: "Pamiętaj!"
            text: "Niedługo koniec zamówienia od " + $scope.restaurantname
            type: "warning"
            showCancelButton: false
            closeOnConfirm: false
            confirmButtonColor: "#00FF33"
          $scope.end=1

    $interval($scope.updateTime, 100)

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
          console.log data2.meals_lists
          if $scope.zamowienia.length>0
            for i in [0...$scope.zamowienia.length]
              if $scope.zamowienia[i].user_id == $scope.ownerr
                $scope.zamowienia[i].meals_lists = data2.meals_lists
          else
            $scope.zamowienia[0].meals_lists = data2.meals_lists

        sweetAlert("Twoja lista posiłków została dodana!", "Odpręż się i czekaj! :)")

        $scope.totalPrice = 0

    $scope.enableAcceptButton = ->
        if $scope.mealsList.length>0
            return false
        else
            return true

    $scope.getTotal = (siema) ->
      total = 0
      for i in [0...$scope.zamowienia[siema].meals_lists.length]
        total += ($scope.zamowienia[siema].meals_lists[i].amount * $scope.zamowienia[siema].meals_lists[i].meal.price) + $scope.priceAfter
      return total