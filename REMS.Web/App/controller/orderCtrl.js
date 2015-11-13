(function () {
    'use strict';
    var controllerId = 'OrderController';
    angular.module('app').controller(controllerId,
        ['$scope', '$http', '$q', 'LanguageService', ContentController]);
    function ContentController($scope, $http, $q, LanguageService) {
        // Using 'Controller As' syntax, so we assign this to the pos variable .
        var lid = LanguageService.GetLanguageShort();
        $scope.LanguageShort = lid;
        var HubUrl = localStorage.getItem("HubUrl");
        // Bindable properties and functions are placed on pos.
        // Tables View.
        $scope.PrintOrderInit = PrintOrderInit;
        $scope.ChangeFloor = ChangeFloor;
        $scope.ChangeTable = ChangeTable;
        $scope.PrintSlip = PrintSlip;
        function PrintOrderInit() {
            if (!IsSettingLoaded()) {
                return window.location.href = "/";
            }
            $scope.ShopSetting = JSON.parse(localStorage.getItem("ShopSetting"));

            $("#btnPrintSlip").attr("disabled", true);
            $('#loading').show();
            var deferred = $q.defer();
            $http({
                method: 'GET',
                url: '/Booking/GetFloorList',
                params: {},
                // headers: getHeaders(),
            }).success(function (data, status, headers, cfg) {
                console.log(data);
                $scope.FloorList = data;
                $('#loading').hide();
                deferred.resolve(data);
            }).error(function (err, status) {
                console.log(err);
                deferred.reject(status);
                $('#loading').hide();
            });
        }
        function ChangeFloor() {
            $('#loading').show();
            GetFloorTables($scope.FloorID);
        }
        function ChangeTable() {
            $("#loading").show();
            var deferred = $q.defer();
            $http({
                method: 'GET',
                url: '/Booking/GetTableByID',
                params: { ID: $scope.TableID },
                // headers: getHeaders(),
            }).success(function (data, status, headers, cfg) {
                $scope.TableInfo = data;
                deferred.resolve(data);
                $('#loading').hide();
                $("#btnPrintSlip").removeAttr("disabled");
            }).error(function (err, status) {
                console.log(err);
                deferred.reject(status);
                $('#loading').hide();
            });
        }
        function PrintSlip() {
            $("#loading").show();
            var deferred = $q.defer();
            var order={};
            order.OrderId=0;
            order.Fk_ShopId=$("#hidShopID").val();
            order.Fk_UserId = $("#hidUserID").val();
            order.OrderStatus="Process";
            order.Currency = $scope.ShopSetting[1].Currency
            order.TotalAmount = 0;
            //order.PaymentMethod { get; set; }
            //order.DeliveryMethod { get; set; }
            order.OrderHasPaid = false;
            //order.OrderedOn { get; set; }
            //order.CancelledOn { get; set; }
            //order.Remarks { get; set; }
            order.FirstName = $scope.FirstName;
            order.LastName = $scope.LastName;
            order.MobileNumber = $scope.MobileNo;
            //order.DeliveryAddress = "";
            order.QRCode = "N/A";
            order.QRCodeEnabled = false;
            // order.OrderNumber = "";
            order.TableNumber = $scope.TableInfo.TableNo;
            //order.AddedOn = "";
            //order.UpdatedOn = "";
            //order.DeletedOn = "";
            order.Fk_AddedBy = $("#hidUserID").val();
            order.OrderType = "Online";

            $http({
                method: 'POST',
                url: '/Product/AddOrder',
                data: JSON.stringify(order),
                headers: { 'Content-Type': 'application/JSON' }
            }).success(function (data, status, headers, cfg) {
                order.OrderNumber = data.toString().split(':')[1].replace('\"','');
                $http({
                    method: 'POST',
                    url: HubUrl + 'api/ShopAPI/AddOrder',
                    data: JSON.stringify(order),
                    headers: { 'Content-Type': 'application/JSON' }
                }).success(function (data, status, headers, cfg) {
                    if (data != "0") {
                        $scope.OrderID = data;
                        $scope.OrderLink = HubUrl + 'S4/EMenu/MyTable/' + data;
                    }
                    deferred.resolve(data);
                    $('#loading').hide();
                }).error(function (err, status) {
                    console.log(err);
                    deferred.reject(status);
                    $('#loading').hide();
                });

                $('#loading').hide();
            }).error(function (err, status) {
                console.log(err);
                deferred.reject(status);
                $('#loading').hide();
            });

        }
        function GetFloorTables(floorid) {
            var deferred = $q.defer();
            $http({
                method: 'GET',
                url: '/Booking/GetTableByFloorID',
                params: { floorID: floorid },
                // headers: getHeaders(),
            }).success(function (data, status, headers, cfg) {
                $scope.TableList = data;
                deferred.resolve(data);
                $('#loading').hide();
            }).error(function (err, status) {
                console.log(err);
                deferred.reject(status);
                $('#loading').hide();
            });

        }
        function IsSettingLoaded() {
            var city = localStorage.getItem("CitySetting");
            var shop = localStorage.getItem("ShopSetting");
            //if (city == null) {
            //    return false;
            //}
            //else
            if (shop == null) {
                return false;
            }
            else {
                return true
            }
        }
    };
})();