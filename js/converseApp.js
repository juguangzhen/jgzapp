var app = angular.module('converseApp', ['ionic']);
//    配置状态
app.config(function($ionicConfigProvider,$stateProvider,$urlRouterProvider){
    $stateProvider.state('index',{
        url:'/myIndex',
        templateUrl:'tpl/index.html',
        controller:'indexCtrl'
    })
        .state('detail',{
            url:'/myDetail/:id',
            templateUrl:'tpl/detail.html',
            controller:'detailCtrl'
        })
        .state('login',{
            url:'/myLogin',
            templateUrl:'tpl/login.html',
            controller:'loginCtrl'
        })
        .state('register',{
            url:'/myRegister',
            templateUrl:'tpl/register.html',
            controller:'registerCtrl'
        });
    $urlRouterProvider.otherwise('myIndex');
});

//    创建控制器
app.controller('parentCtrl',["$scope",'$http','$ionicScrollDelegate',
    function($scope,$http,$ionicScrollDelegate){
        $scope.toTop=function(){
            $ionicScrollDelegate.scrollTop(true);
        };
        $scope.vcode=function(){
            $(".vcode").attr('src',`data/vcode.php?_=Math.random()`);
        };
        $scope.isTipShow=false;
        $scope.isCartShow=false;
        if(sessionStorage['uid']!=null){
            $http.get('data/cart_detail_select.php?uid='+sessionStorage['uid']).success(function(data){
                $scope.cartList=data;
                $scope.sum=0;
                $scope.tip=data.length;
                for(var i=0;i<data.length;i++){
                    $scope.sum+=data[i].count*data[i].price;
                }
            });
            $('#login-btn').html('登出');
            $scope.isTipShow=true;
        }else{
            $scope.isCartShow=true;
        }
        //$scope.add=function(){
        //    $scope.num=$('#count').val();
        //    $scope.num++;
        //    $('#count').val($scope.num);
        //};
        //$scope.reduce=function(){
        //    $scope.num=$('#count').val();
        //    if($scope.num==1){
        //        $scope.num=$scope.num;
        //    }else{
        //        $scope.num--;
        //    }
        //    $('#count').val($scope.num);
        //}
        $('body').on('click','.cartRemove',function(){
            var did=$(this).attr('data-did');
            $.ajax({
                type:'POST',
                url:'data/cart_detail_delete.php',
                data:{did:did},
                success:function(result){
                    if(result.code===1){
                        location.reload(true);
                    }
                }
            });
        })
        //$scope.cartRemove=function(){
            //var did=$('h4[data-did]').attr('data-did');
            //$http.get('data/cart_detail_delete.php?did='+did).success(function(data){
            //    if(data.code==1){
            //        location.reload(true);
            //    }
            //});
        //}
}]);
app.controller('indexCtrl',['$scope','$http','$state',
    function($scope,$http,$state){
    $scope.hasMore=true;
    $http.get('data/productNew_select.php?start=0').success(function(data){
        //console.log(data);
        $scope.productList=data;
    });

    $scope.loadMore=function(){
        $http.get('data/productNew_select.php?start='+$scope.productList.length).success(function(data){
            //console.log(data)
            if(data.length<4){
                $scope.hasMore=false;
            }
            $scope.productList=$scope.productList.concat(data);

            $scope.$broadcast('scroll.infiniteScrollComplete');

        })
    };
    if(sessionStorage['uid']!=null){
        $('#login-btn').html('登出');
    }

    $('#login-btn').on('click',function(e){
        if($('#login-btn').html()=='登出'){
            e.preventDefault();
            sessionStorage.clear();
            location.reload(true);
            $(this).html("登录");
        }
    });

}]);


app.controller('detailCtrl',['$scope','$http','$state','$stateParams','$httpParamSerializerJQLike',
    function($scope,$http,$state,$stateParams,$httpParamSerializerJQLike){
        $http.get('data/detail_select.php?pid='+$stateParams.id).success(function(data){
            $scope.product=data[0];
            $scope.i=$scope.product.picmd.lastIndexOf(".");
            $scope.picbefor=$scope.product.picmd.slice(0,$scope.i-6);
            $scope.picafter=$scope.product.picmd.slice($scope.i);
        });
        $http.get('data/about_select.php?start=6').success(function(data){
            $scope.productList=data;
        });
        $scope.aboutProduct=function(){
            $http.get('data/about_select.php?start=6').success(function(data){
                $scope.productList=data;
            });
            $("#like-product").removeClass('no-active').next("#history-product").addClass('no-active');
        };
        $scope.historyProduct=function(){
            $scope.start=Math.floor(Math.random()*30);
            $http.get('data/about_select.php?start='+$scope.start).success(function(data){
                $scope.productList=data;
            });
            $("#history-product").removeClass('no-active').prev("#like-product").addClass('no-active');
        };
        if(sessionStorage['uid']!=null){
            $('#login-btn').html('登出');
        }
        $('#login-btn').on('click',function(e){
            if($('#login-btn').html()=='登出'){
                e.preventDefault();
                sessionStorage.clear();
                location.reload(true);
                $(this).html("登录");
            }
        });
        //加入购物车
        $scope.cartAdd=function(){
            if(sessionStorage['uid']!=null){
                var count=$('#count').val();
                var size=$('#size').val();
                sessionStorage['size']=size;
                $scope.shop={
                    uid:sessionStorage['uid'],
                    pid:$scope.product.pid,
                    count:count,
                    size:size
                };
                var result = $httpParamSerializerJQLike($scope.shop);
                $http
                    .get('data/cart_product_add.php?'+result)
                    .success(function (data) {
                        if(data.code == 1){
                            $scope.isModelShow=true;
                            $scope.errTips='已加入购物车！';
                            $scope.closeModel=function(){
                                $scope.isModelShow=false;
                                location.reload(true);
                            };
                        }else if(data.code==4){
                            $scope.isModelShow=true;
                            $scope.errTips='请选择数量';
                            $scope.closeModel=function(){
                                $scope.isModelShow=false;
                            };
                        }else if(data.code==5){
                            $scope.isModelShow=true;
                            $scope.errTips='请选择尺码';
                            $scope.closeModel=function(){
                                $scope.isModelShow=false;
                            };
                        }
                    })
            }else{
                $scope.isModelShow=true;
                $scope.errTips='您还未登录匡威';
                $scope.closeModel=function(){
                    $scope.isModelShow=false;
                    location.href="#myLogin";
                    location.reload(location.href);
                };
            }
        }

}]);

app.controller('loginCtrl',['$scope','$http','$state','$stateParams','$httpParamSerializerJQLike',
    function($scope,$http,$state,$stateParams,$httpParamSerializerJQLike){
        $scope.isModelShow=false;
        $scope.errTips='';
        $scope.submitLogin = function () {
        var result = $httpParamSerializerJQLike($scope.user);
        $http
            .get('data/user_login.php?'+result)
            .success(function (data) {
                if(data.code == 1){
                    sessionStorage['uid']=data.uid;
                    location.href="#myIndex";
                    location.reload(location.href);
                }else if(data.code==2){
                    $scope.isModelShow=true;
                    $scope.errTips='手机/密码错误！';
                }else{
                    $scope.isModelShow=true;
                    $scope.errTips='验证码输入有误！';
                }
            })
        };
        $scope.closeModel=function(){
            $scope.isModelShow=false;
        };
        if(sessionStorage['uid']!=null){
            $('#login-btn').html('登出');
        }

        $('#login-btn').on('click',function(e){
            if($('#login-btn').html()=='登出'){
                e.preventDefault();
                sessionStorage.clear();
                location.reload(true);
                $(this).html("登录");
            }
        });
        //登录表单验证
        $('#phoneLogin').on('blur',function(){
            var uPhone=$(this).val();
            var reg=/(\+86|0086)?\s*1[34578]\d{9}/ig;
            if(reg.test(uPhone)){
                $(this).siblings('.ion-checkmark-circled').css('display','block');
                $(this).siblings('.ion-close-circled').css('display','none');
            }else if(!reg.test(uPhone)){
                $(this).siblings('.ion-close-circled').css('display','block');
                $(this).siblings('.ion-checkmark-circled').css('display','none');
            }
        });
        $('#pwdLogin').on('blur',function(){
            var upwd=$(this).val();
            var reg=/^\w{6,}$/ig;
            if(reg.test(upwd)){
                $(this).siblings('.ion-checkmark-circled').css('display','block');
                $(this).siblings('.ion-close-circled').css('display','none');
            }else if(!reg.test(upwd)){
                $(this).siblings('.ion-close-circled').css('display','block');
                $(this).siblings('.ion-checkmark-circled').css('display','none');
            }
        });
}]);

app.controller('registerCtrl',['$scope','$http','$state','$stateParams','$httpParamSerializerJQLike',
    function($scope,$http,$state,$stateParams,$httpParamSerializerJQLike){
        //注册表单验证
        $('#nameReg').on('blur',function(){
            var uname=$(this).val();
            if(!uname){
                $(this).siblings('.ion-close-circled').css('display','block');
                $(this).siblings('.ion-checkmark-circled').css('display','none');
            }else{
                $(this).siblings('.ion-checkmark-circled').css('display','block');
                $(this).siblings('.ion-close-circled').css('display','none');
            }
        });
        $('#phoneReg').on('blur',function(){
            var uPhone=$(this).val();
            var reg=/(\+86|0086)?\s*1[34578]\d{9}/ig;
            if(reg.test(uPhone)){
                $(this).siblings('.ion-checkmark-circled').css('display','block');
                $(this).siblings('.ion-close-circled').css('display','none');
            }else if(!reg.test(uPhone)){
                $(this).siblings('.ion-close-circled').css('display','block');
                $(this).siblings('.ion-checkmark-circled').css('display','none');
            }
        });
        $('#mailReg').on('blur',function(){
            var umail=$(this).val();
            var reg=/\w+@[a-zA-Z0-9]{2,}\.[a-zA-Z0-9]{2,3}(\.[a-zA-Z0-9]{2,3})?/ig;
            if(reg.test(umail)){
                $(this).siblings('.ion-checkmark-circled').css('display','block');
                $(this).siblings('.ion-close-circled').css('display','none');
            }else if(!reg.test(umail)){
                $(this).siblings('.ion-close-circled').css('display','block');
                $(this).siblings('.ion-checkmark-circled').css('display','none');
            }
        });
        $('#pwdReg').on('blur',function(){
            var upwd=$(this).val();
            var reg=/^\w{6,}$/ig;
            if(reg.test(upwd)){
                $(this).siblings('.ion-checkmark-circled').css('display','block');
                $(this).siblings('.ion-close-circled').css('display','none');
            }else if(!reg.test(upwd)){
                $(this).siblings('.ion-close-circled').css('display','block');
                $(this).siblings('.ion-checkmark-circled').css('display','none');
            }
        });
        $('#pwdAg').on('blur',function(){
            var upwd=$('#pwdReg').val();
            var upwd2=$(this).val();
            if(upwd2===upwd&&upwd2!==''){
                $(this).siblings('.ion-checkmark-circled').css('display','block');
                $(this).siblings('.ion-close-circled').css('display','none');
            }else{
                $(this).siblings('.ion-close-circled').css('display','block');
                $(this).siblings('.ion-checkmark-circled').css('display','none');
            }
        });

        $scope.isModelShow=false;
        $scope.errTips='';
        $scope.submitRegister = function () {
            var result = $httpParamSerializerJQLike($scope.user);
            $http
                .get('data/user_add.php?'+result)
                .success(function (data) {
                    if(data.code == 1){
                        $scope.isModelShow=true;
                        $scope.errTips='欢迎加入匡威！';
                        $scope.closeModel=function(){
                            $scope.isModelShow=false;
                            location.href="#myLogin";
                            location.reload(location.href);
                        };
                    }else{
                        $scope.isModelShow=true;
                        $scope.errTips='验证码输入有误！';
                        $scope.closeModel=function(){
                            $scope.isModelShow=false;
                        };
                    }
                })
        };
}]);
