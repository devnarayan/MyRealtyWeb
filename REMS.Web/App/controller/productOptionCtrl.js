(function () {
    'use strict';
    var controllerId = 'ProductOptionController';
    angular.module('app', ['ui-notification']);
    angular.module('app').controller(controllerId,
        ['$scope', '$http', '$q', 'Notification', ContentController]);
    function ContentController($scope, $http, $q, Notification) {
        // Using 'Controller As' syntax, so we assign this to the pos variable .
        //var lid = LanguageService.GetLanguageShort();
        // $scope.LanguageShort = lid;
        $scope.en = true;
        var HubUrl = localStorage.getItem("HubUrl");
        // Bindable properties and functions are placed on pos.
        // Tables View.
        $scope.OptionListInit = OptionListInit;

        $scope.OptionAddInit = OptionAddInit;
        $scope.SavePorductOption = SavePorductOption;
        $scope.RemoveProOptionLine = RemoveProOptionLine;
        $scope.AddOptionLine = AddOptionLine;
        $scope.CancelAddProOption = CancelAddProOption;

        $scope.OptionEditInit = OptionEditInit;
        $scope.UpdatePorductOption = UpdatePorductOption;

        $scope.ProductListInit = ProductListInit;
        $scope.ViewProductDetails = ViewProductDetails;

        $scope.ProductAddInit = ProductAddInit;
        $scope.SavePorduct = SavePorduct;
        $scope.CancelAddProduct = CancelAddProduct;

        function OptionListInit() {

            $("#loading").show();
            $http({
                method: 'Get',
                url: '/Admin/ProductOption/GetProductOptionList',
                params: {status:true}
            }).success(function (data) {
                $scope.ProductOptionList = data;
                $("#loading").hide();
            })
        }

        function OptionAddInit() {
            $scope.OptionLineModel = [];
            $scope.Option = {};
            $scope.Option.MaxSelection = 1;
            $scope.Option.Mandatory = false;
            $scope.Option.IsEnable = false;
                $("#loading").hide();
        }
        function SavePorductOption() {
            $("#loading").show();
            $scope.Option.OptionLineModel = $scope.OptionLineModel;

            $http({
                method: 'POST',
                url: '/Admin/ProductOption/SaveProductOption',
                data: JSON.stringify($scope.Option),
                headers: { 'Content-Type': 'application/JSON' }
            }).success(function (data, status, headers, cfg) {
                $("#loading").hide();
                if (data == "1") {
                    Notification.success({ message: 'Product Option added successfully', title: 'New Product Option' });
                    $scope.Option.ProductOptionName = "";
                    $scope.Option.ProductOptionNameEn = "";
                    $scope.Option.BasePrice = "";
                    $scope.Option.MaxSelection = 1;
                    $scope.Option.Mandatory = false;
                    $scope.Option.IsEnable = false;
                }
                else {
                    Notification.error({ message: 'Please try again or contact to administrator', title: 'Error' });
                }
            });
        }
        function RemoveProOptionLine(oid) {
            $scope.OptionLineModel.splice($scope.OptionLineModel.indexOf(oid), 1)
        }
        function AddOptionLine() {
            $scope.OptionLineModel.push({ ProductOptionLineName: $scope.ProductOptionLineName, ProductOptionLineNameEn: $scope.ProductOptionLineNameEn, ExtraPrice: $scope.ExtraPrice });
            $scope.ExtraPrice = "";
            $scope.ProductOptionLineNameEn = "";
            $scope.ProductOptionLineName = "";
        }
        function CancelAddProOption() {
            $scope.Option.ProductOptionName = "";
            $scope.Option.ProductOptionNameEn = "";
            $scope.Option.BasePrice = "";
            $scope.Option.MaxSelection = 1;
            $scope.Option.Mandatory = false;
            $scope.Option.IsEnable = false;
        }

        function OptionEditInit() {
            $scope.OptionLineModel = [];
            $scope.Option = {};
            $http({
                method: 'Get',
                url: '/Admin/ProductOption/GetProductOptionbyID',
                params: { optionid: $("#hidID").val() }
            }).success(function (data) {
                $("#loading").hide();
                $scope.Option = data;
                $scope.OptionLineModel = $scope.Option.OptionLineModel;
            });
        }
        function UpdatePorductOption() {
            $("#loading").show();
            $scope.Option.OptionLineModel = $scope.OptionLineModel;

            $http({
                method: 'POST',
                url: '/Admin/ProductOption/UpdateProductOption',
                data: JSON.stringify($scope.Option),
                headers: { 'Content-Type': 'application/JSON' }
            }).success(function (data, status, headers, cfg) {
                $("#loading").hide();
                if (data == "1") {
                    Notification.success({ message: 'Product Option updated successfully', title: 'New Product Option' });
                }
                else {
                    Notification.error({ message: 'Please try again or contact to administrator', title: 'Error' });
                }
            });
        }

        function ProductListInit() {
            $("#loading").show();
            $http({
                method: 'Get',
                url: '/Admin/Product/GetProductList',
                params: { status: true }
            }).success(function (data) {
                $scope.ProductList = data;
                $("#loading").hide();
            })
        }
        function ViewProductDetails(Product) {
            $scope.Product = Product;
        }

        function ProductAddInit() {

        }
        function SavePorduct() {

        }
        function CancelAddProduct() {

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