angular.module 'EatingApp'
  .controller 'MealsCtrl', ($http, $scope, $stateParams, $interval)->
   
    $scope.orderid = $stateParams.orderid
    $scope.groupid = $stateParams.groupid
    
    $scope.hideActionPanel=false
    $scope.hideIfAlreadyOrder=false #co to jest za widz xd

    $scope.mealsList = []
    $scope.totalPrice = 0
    $scope.end = 0
    $scope.allUserPrice = 0

    
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

    #GET STRUCTURE---------------------------------------------------
    $http.get("/groups/#{$stateParams.groupid}/orders/#{$stateParams.orderid}").success (data)->
        $scope.restaurantname = data.restaurant.name
        $scope.phoneNumber = data.restaurant.phone_number
        $scope.meals = data.restaurant.meals
        $scope.convertMeals ->
        $scope.endTime = moment(data.closing_time,"YYYY-MM-DDTHH:mm:ss.SSSZ")
        $scope.zamowienia = data.purchasers
        $scope.ownerr = data.owner.email
        $scope.shippingCostPerPerson = data.restaurant.shipping_cost
        $scope.iloscChlopa = $scope.zamowienia.length
        $scope.priceNow = $scope.shippingCostPerPerson/$scope.iloscChlopa
        $scope.GetCount ->
        
        if $scope.iloscChlopa == 0
          $scope.priceNow = $scope.shippingCostPerPerson/($scope.iloscChlopa+1)
          $scope.priceAfter = $scope.shippingCostPerPerson/($scope.iloscChlopa+1)
        else if $scope.iloscChlopa > 0
          $scope.iloscChlopa = $scope.zamowienia.length
          $scope.priceAfter = $scope.shippingCostPerPerson/($scope.iloscChlopa+1)
        for i in [0...$scope.zamowienia.length]
            if $scope.zamowienia[i].user_id == $scope.ownerr
              $scope.hideIfAlreadyOrder = true
  

    #----------------------------------------------------------------
    $scope.convertMeals = ->
      tablica = []
      temp = []
      siemanko =[]
      for i in [0...$scope.meals.length]
        if $scope.meals[i].meal_type_id in tablica
        else 
          tablica.push($scope.meals[i].meal_type_id)

      for i in [0...tablica.length]
        for j in [0...$scope.meals.length]
          if $scope.meals[j].meal_type_id == tablica[i]
            temp.push($scope.meals[j].name)

              
        siemanko[i] = {id : tablica[i], meals : temp }
        temp = []
      
      console.log siemanko

    #--Time & view update -------------------------------------------
    $scope.updateTime = ->
      if $scope.endTime.isBefore(moment())
        $scope.timeRemaining = "ZAKOŃCZONE"
        $scope.divStyle =
          background : "#34495e"
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
            confirmButtonColor: "#62cb31"
          $scope.end=1

    $interval($scope.updateTime, 100)
    #----------------------------------------------------------------

    #------Meals related---------------------------------------------
    $scope.addMeal = (mealNumber) ->
        if($scope.mealsList.indexOf(mealNumber) != -1)
          mealNumber.amount = mealNumber.amount + 1
        else
          mealNumber.amount = 1
          $scope.mealsList.push(mealNumber)
        $scope.totalPrice = $scope.totalPrice + mealNumber.price

    $scope.removeMeal = (mealNumber) ->
      $scope.totalPrice = $scope.totalPrice - mealNumber.price
      if(mealNumber.amount > 1)
        mealNumber.amount = mealNumber.amount - 1
      else
        $scope.mealsList.splice($scope.mealsList.indexOf(mealNumber), 1)

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
          $scope.GetFunction ->
        swal
          title: "Twoja lista posiłków została dodana!"
          text: "Odpręż się i czekaj! :)"
          showCancelButton: false
          closeOnConfirm: false
          confirmButtonColor: "#62cb31"

    $scope.enableAcceptButton = ->
        if $scope.mealsList.length>0
            return false
        else
            return true

    $scope.getTotal = (userNumber) ->
      total = 0
      for i in [0...$scope.zamowienia[userNumber].meals_lists.length]
        total += ($scope.zamowienia[userNumber].meals_lists[i].amount * $scope.zamowienia[userNumber].meals_lists[i].meal.price) 
      total += $scope.priceNow
      return total
    $interval ->
      $scope.GetFunction = ->
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
    ,3000

    $scope.GetCount = ->
      for i in [0...$scope.zamowienia.length]
        for j in [0...$scope.zamowienia[i].meals_lists.length]
          $scope.allUserPrice += ($scope.zamowienia[i].meals_lists[j].amount * $scope.zamowienia[i].meals_lists[j].meal.price)
      if $scope.zamowienia.length ==0
        $scope.allUserPrice = 0
      else
        $scope.allUserPrice += $scope.shippingCostPerPerson

    $scope.showMoreInfo = (mealIndex)->
      swal
        title: $scope.meals[mealIndex].name
        text: "Salami pepperoni, ser gouda, sos pomidorowy, oregano"
        imageUrl: "http://www.zajadam.pl/wp-content/uploads/2009/09/pizza-20-469x313.jpg"
        imageSize: "300x200"
        showCancelButton: false
        closeOnConfirm: false
        confirmButtonColor: "#62cb31"
