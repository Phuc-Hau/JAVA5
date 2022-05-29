var app = angular.module("myapp", ["ngRoute"]);
app.controller("controller", function ($scope) {
  $scope.titlel = "ko";

})

app.controller("Salectl", function ($scope, $http) {

  $scope.saleSP = [];
  $http.get("js/json/sale.json").then(function (response) {
    $scope.saleSP = response.data;
  }, function (response) {
    alert("lỗi");
  })


})

app.controller("xuhuongctl", function ($scope, $http) {

  $scope.xuhuongSP = [];
  $http.get("js/json/xuhuong.json").then(function (response) {
    $scope.xuhuongSP = response.data;

  }, function (response) {
    alert("lỗi");
  })
})

app.controller("mycrl", function ($scope) {


})
app.controller("myindex", function ($scope) {
  $scope.row = 12;
  $scope.begin = 0;
  $scope.soht = "col-sm-2";
})

app.controller("myxuhuong", function ($scope, $http) {

  $scope.begin = 0;
  $scope.soht = "col-sm-3";
  $scope.row = 12;
  $scope.page = 1;
  $scope.getPageCount = 1;
  $scope.Countpage = [];
  $scope.xuhuongSP123 = [];

  $http.get("js/json/xuhuong.json").then(function (response) {
    $scope.xuhuongSP123 = response.data;
    $scope.pageCount = Math.ceil($scope.xuhuongSP123.length / $scope.row);
    for (let index = 0; index < $scope.pageCount; index++) {
      $scope.Countpage.push({ o: index });
    }
  }, function (response) {
    alert("lỗi");
  })

  $scope.prev = function () {
    if ($scope.begin > 0) {
      $scope.begin -= $scope.row;
    }
    $scope.page = parseInt($scope.begin / $scope.row) + 1;
    $scope.getPageCount = $scope.page;
  }

  $scope.next = function () {
    if ($scope.begin < ($scope.pageCount - 1) * $scope.row) {
      $scope.begin += $scope.row;
    }
    $scope.page = parseInt($scope.begin / $scope.row) + 1;
    $scope.getPageCount = $scope.page;
  }

})

app.config(function ($routeProvider) {
  $routeProvider

    .when("/till/:id", {
      templateUrl: "se.html",
      controller: "chinhtri"
    })

})

var u;
app.controller("search", function ($scope, $http) {


  $scope.sp = [];
  $http.get("js/json/xuhuong.json").then(function (response) {
    $scope.sp = response.data;
    $scope.sear = function (search) {
      

      for (let index = 0; index < $scope.sp.length; index++) {
        if($scope.sp[index].title == search){
            $scope.ser =$scope.sp[index];
        }
      }

    }

    $scope.new = function (searc) {
      
      for (let index = 0; index < $scope.sp.length; index++) {
        if($scope.sp[index].title == searc){
          $scope.giohang.push({ 
            'title': $scope.sp[u].title,
            'img' : $scope.sp[u].img,
            'sl' :1
        });
        }
      }

    }

  }, function (response) {
    alert("lỗi");
  })

});




app.filter('percentage', function ($filter) {
  return function (input, decimals) {
    return $filter('number')(input * 100, decimals) + '%';
  }
})

app.filter('solds', function ($filter) {
  return function (input) {
    if (input - 1000 >= 0) {
      return $filter('number')(input / 1000) + 'k';
    } else {
      return $filter('number')(input)
    }

  }
})

app.filter('numbers', function ($filter) {
  return function (input) {
    if (parseInt(input / 1000000) > 0) {
      return $filter('number')(input / 1000000) + ".000";
    } else if ((Math.ceil(input / 1000) != Math.floor(input / 1000))) {
      return $filter('number')(parseInt(input / 1000)) + "." + (parseInt((input % 1000)));
    } else if (input < 1000) {
      return $filter('number')(input);
    } else if ((Math.ceil(input / 1000) == Math.floor(input / 1000))) {
      return $filter('number')(input / 1000) + ".000";
    }
  }
})

