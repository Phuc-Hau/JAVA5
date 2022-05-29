
app.controller("mygiohang", function ($scope,$http) {

    $scope.giohang =[];

    $http.get("js/json/giohang.json").then(function (response) {
        $scope.giohang = response.data;
        

        $scope.getAmount = function(){
            var amount =0;
            for (let index = 0; index < $scope.giohang.length; index++) {
                if($scope.giohang[index].buy){
                    
                    amount += $scope.giohang[index].price * $scope.giohang[index].sl;
                }
                
            }
            return Math.abs(amount);
        }

        $scope.insert = function(u){
           
            $scope.saleSP = [];
            $http.get("js/json/sale.json").then(function (response) {
                $scope.saleSP = response.data;
                var mo = ($scope.saleSP[u].price-($scope.saleSP[u].price * $scope.saleSP[u].sale));
                var er=0;
                
                for (let index = 0; index < $scope.giohang.length; index++) {
                    
                    if($scope.saleSP[u].title == $scope.giohang[index].title && $scope.giohang[index].price == mo){
                        er=index;
                    }
                   
                }
                if(er==0){
                    $scope.giohang.push({ 
                        'title': $scope.saleSP[u].title,
                        'img' : $scope.saleSP[u].img,
                        'price': $scope.saleSP[u].price-($scope.saleSP[u].price * $scope.saleSP[u].sale),
                        'sl' :1
                    });
                } else{
                    $scope.giohang[er].sl = parseInt($scope.giohang[er].sl)+1;
                }
  
            }, function (response) {
              alert("lỗi");
            })
        }
        
        $scope.inserts = function(o){
            $scope.xuhuongSP = [];
            $http.get("js/json/xuhuong.json").then(function (response) {
                $scope.xuhuongSP = response.data;
                var err=0;
                for (let index = 0; index < $scope.giohang.length; index++) {
                    
                    if($scope.xuhuongSP[o].title == $scope.giohang[index].title && ($scope.xuhuongSP[o].price == $scope.giohang[index].price)){
                        err=index;
                    }
                   
                }
                
                if(err==0){
                    $scope.giohang.push({ 
                        'title': $scope.xuhuongSP[o].title,
                        'img' : $scope.xuhuongSP[o].img,
                        'price': $scope.xuhuongSP[o].price,
                        'sl' :1
                    });
                } else{
                    $scope.giohang[err].sl = parseInt($scope.giohang[err].sl)+1;
                }
                
            }, function (response) {
                alert("lỗi");
            })
           
        }

        $scope.delete = function(n){
            $scope.giohang.splice(n,1);
        }

        $scope.decrease = function(decrease){
            if($scope.giohang[decrease].sl > 1){
                $scope.giohang[decrease].sl =  parseInt($scope.giohang[decrease].sl)-1;
            } 
        }

        $scope.plus = function(plus){
            if($scope.giohang[plus].sl < 100){
                $scope.giohang[plus].sl = parseInt($scope.giohang[plus].sl)+1;
            }
        }
        
    }, function (response) {
        alert("lỗi");
    })
    
})