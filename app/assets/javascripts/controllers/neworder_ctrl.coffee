 angular.module 'EatingApp'
 .controller 'NewOrderCtrl', ($http, $scope, $stateParams, $state)->

    $scope.groupid = $stateParams.groupid

    $http.get("/restaurants").success (data)->
      console.log(data)
      $scope.restaurants = data

    $scope.time = ""
    a = ""
    $scope.currentID = -1

    $scope.addRestaurant = (restaurant) ->
      $scope.currentID = restaurant.id-1
      $scope.selectedRestaurant = $scope.currentID
    $scope.enableAcceptButton = ->
        if $scope.currentID > -1 && $scope.time
            return false
        else
            return true


    $scope.addNewOrder = ->

      a = ($scope.time).toString()
      a = a.substring(15, 21)
      a = moment(a, "HH:mm")
      if ((a.hour() < moment().hour()) || ((a.hour() == moment().hour()) && (a.minute() < moment().minute())))
        a.set('day',a.day()+1)

      console.log(a.format())
      data1 = {restaurant_id : $scope.currentID+1, closing_time : a.format(), group_id : $stateParams.groupid }
      console.log(data1);
      $http.post("/groups/#{$stateParams.groupid}/orders", data1).success (data2, status) ->
        console.log(data2)
        $scope.orderid = data2.id
        swal
          title: "Dodałeś zamówienie"
          type: "success"
          confirmButtonColor: "#62cb31"
          ->
            $state.go("meals",{groupid:$stateParams.groupid,orderid:$scope.orderid})

    $scope.showMoreInfo = (mealIndex)->
      swal
        title: $scope.restaurants[$scope.currentID].meals[mealIndex].name
        text: $scope.restaurants[$scope.currentID].meals[mealIndex].description
        imageUrl: $scope.restaurants[$scope.currentID].meals[mealIndex].image_url
        imageSize: "300x200"
        showCancelButton: false
        closeOnConfirm: false
        confirmButtonColor: "#62cb31"



    #-------------------------------------------------
  # $scope.siema = ->
      #data1 = {restaurant_id : $scope.index, closing_time : a.format(), group_id : $stateParams.groupid }
      #console.log(data1);
      #$http.post("/groups/#{$stateParams.groupid}/orders", data1).success (data1, status) ->
      #alert("Ambaras!")
    #-------------------------------------------------

    # -----------------------------------------------funkcja norberta :D
    #zbiera godzine z fielda, robi z tego string momenta zgodny z iso
    #przesuwa na nastepny dzien jak jest przed now()

  # $scope.assertTime = ->
  #  a = ($scope.time).toString()
  #  a = a.substring(15, 21)
  #
  #  a = moment(a, "HH:mm")
  #  if ((a.hour() < moment().hour()) || ((a.hour() == moment().hour()) && (a.minute() < moment().minute())))
  #    a.set('day',a.day()+1)

  #  console.log(a.format())
  #---------------------------------------------------

    #2016-04-01T13:28:28.442Z
    #2016-04-18T23:26:31.123Z
    #s = (moment().format("YYYY-MM-DDTHH:mm:ss.SSS") + "Z") -> chujowe parsowanie w postgresie
    #UCIEKAJO GODZINY Z OFFSETU, zmienic to w pizdu (xD), albo odejmowac za kazym (:o)

