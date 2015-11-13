(function () {
    'use strict';
    var controllerId = 'TemplateController';
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
        $scope.TemplateSearchInit = TemplateSearchInit;
        $scope.ViewClick = ViewClick;
        $scope.EditClick = EditClick;
        $scope.ViewCatClick = ViewCatClick;
        $scope.EditCatClick = EditCatClick;

        $scope.EditTemplateInit = EditTemplateInit;
        $scope.AddTemplateInit = AddTemplateInit;
        $scope.SaveTemplate = SaveTemplate;
        $scope.ClearTemplate = ClearTemplate;
        $scope.UpdateTemplate = UpdateTemplate;
        $scope.CancelTemplate = CancelTemplate;


        $scope.CategoryListInit = CategoryListInit;
        $scope.ManageCategoryInit = ManageCategoryInit;
        $scope.AddCategory = AddCategory;
        $scope.UpdateCategory = UpdateCategory;
        $scope.CancelCategory = CancelCategory;

        function TemplateSearchInit() {
            $("#loading").show();

            $http({
                method: 'Get',
                url: '/SuperAdmin/Template/GetTemplateList',
                params: { status: true }
            }).success(function (data) {
                $scope.TemplateList = data;
                $("#loading").hide();
            })
        }
        function ViewClick(template) {
            $scope.Template = template;
        }
        function EditClick(template) {
            $scope.Template = template;
            window.location.href = "/SuperAdmin/Template/EditTemplate/" + template.TemplateMasterID;
        }
        function ViewCatClick(template) {
            $scope.Category = template;
        }
        function EditCatClick(template) {
            $scope.Category = template;
            window.location.href = "/SuperAdmin/Template/ManageCategory/" + template.TemplateMasterID;
        }

        function EditTemplateInit() {
            $("#btnEdit").show();
            $("#loading").show();
            $http({
                method: 'Get',
                url: '/SuperAdmin/Template/GetTemplate',
                params: { templateid: $("#hidTemplateid").val() }
            }).success(function (data) {
                $scope.Template = data;
                $("#loading").hide();
            })
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
        function AddTemplateInit() {
            $("#loading").hide();
        }
        function SaveTemplate() {
            var $checkoutForm = $('#checkout-form').validate({
                // Rules for form validation
                rules: {
                    CardNo: {
                        required: true
                    },
                    //InstallmentNo: {
                    //    required: true,
                    //    digits: true
                    //},
                    Amount: {
                        required: true,
                    }
                },

                // Messages for form validation
                messages: {
                    CardNo: {
                        required: 'Please enter installment name'
                    },
                    //InstallmentNo: {
                    //    required: 'Please enter serial no of installment',
                    //    digits: 'Digits only please'
                    //},
                    Amount: {
                        required: 'Plase enter amount',
                    }
                },

                submitHandler: function (form) {
                    $(form).ajaxSubmit({
                        success: function () {
                            //  $scope.ads.ChargeType = $("#divChargeType input[type='radio']:checked").val();
                            $("#loading").show();
                            alert('hi')
                            $("#loading").show();
                            $http({
                                method: 'POST',
                                url: '/SuperAdmin/Template/SaveTemplate',
                                data: JSON.stringify($scope.Template),
                                headers: { 'Content-Type': 'application/JSON' }
                            }).success(function (data) {
                                $scope.Template = data;
                                $scope.FloorList = data;
                                if (status == "0") {
                                    $("#MessageArea").show();
                                    $scope.MessageTitle = "Error";
                                    $scope.MessageClass = "alert-danger";
                                    $scope.Message = "Template Not added, Please try again.";
                                }
                                else {
                                    $("#MessageArea").show();
                                    $scope.MessageTitle = "Success";
                                    $scope.MessageClass = "alert-success";
                                    $scope.Message = "New Template Added Successfully.";
                                }
                                $("#loading").hide();
                            });
                        }
                    });
                },

                // Do not change code below
                errorPlacement: function (error, element) {
                    error.insertAfter(element.parent());
                }
            });


        }
        function ClearTemplate() {
            // Clear input fields
        }
        function UpdateTemplate() {
            $("#loading").show();
            $http({
                method: 'POST',
                url: '/SuperAdmin/Template/EditTemplate',
                data: JSON.stringify($scope.Template),
                headers: { 'Content-Type': 'application/JSON' }
            }).success(function (data) {
                $scope.Template = data;
                $scope.FloorList = data;
                if (status == "0") {
                    $("#MessageArea").show();
                    $scope.MessageTitle = "Error";
                    $scope.MessageClass = "alert-danger";
                    $scope.Message = "Template Not Updated, Please try again.";
                }
                else {
                    $("#MessageArea").show();
                    $scope.MessageTitle = "Success";
                    $scope.MessageClass = "alert-success";
                    $scope.Message = "Template Updated Successfully.";
                }
                $("#loading").hide();
            })
        }
        function CancelTemplate() {

        }

        function CategoryListInit() {
            $("#loading").show();

            $http({
                method: 'Get',
                url: '/SuperAdmin/Template/GetCategoryList',
                params: { status: true }
            }).success(function (data) {
                $scope.CategoryList = data;
                $("#loading").hide();
            })
        }
        function ManageCategoryInit() {
            $("#loading").show();

            $http({
                method: 'Get',
                url: '/SuperAdmin/Template/GetCategory',
                params: { Categoryid: $("#hidCategoryid").val() }
            }).success(function (data) {
                $scope.Category = data;
                $("#loading").hide();
            })
        }
        function AddCategory() {
            $("#loading").show();
            $http({
                method: 'POST',
                url: '/SuperAdmin/Template/AddCategory',
                data: JSON.stringify($scope.Category),
                headers: { 'Content-Type': 'application/JSON' }
            }).success(function (data) {
                $scope.Template = data;

                if (status == "0") {
                    $("#MessageArea").show();
                    $scope.MessageTitle = "Error";
                    $scope.MessageClass = "alert-danger";
                    $scope.Message = "Category Updated, Please try again.";
                }
                else {
                    $("#MessageArea").show();
                    $scope.MessageTitle = "Success";
                    $scope.MessageClass = "alert-success";
                    $scope.Message = "Category Updated Successfully.";
                }
                $("#loading").hide();
            })
        }
        function UpdateCategory() {
            $("#loading").show();
            $http({
                method: 'POST',
                url: '/SuperAdmin/Template/EditCategory',
                data: JSON.stringify($scope.Category),
                headers: { 'Content-Type': 'application/JSON' }
            }).success(function (data) {
                $scope.Category = data;
                if (status == "0") {
                    $("#MessageArea").show();
                    $scope.MessageTitle = "Error";
                    $scope.MessageClass = "alert-danger";
                    $scope.Message = "Category Not Updated, Please try again.";
                }
                else {
                    $("#MessageArea").show();
                    $scope.MessageTitle = "Success";
                    $scope.MessageClass = "alert-success";
                    $scope.Message = "Category Updated Successfully.";
                }
                $("#loading").hide();
            })
        }
        function CancelCategory() {
            // clear fields
            $scope.Category = {};
        }
        //Email, Print and Export 
        $scope.ReportSendMail = function () {
            var vli = ValidateBackupReceiptEmail();
            if (vli == false) {
                $('#myModal').modal('show');
            }
            else {
                $('#loading').show();
                $scope.ReportContent = $("#rptTableContent").html();
                $http({
                    method: 'Post',
                    url: '/BI/Report/MailReport',
                    data: { ReportContent: $scope.ReportContent, emailid: $("#reportmail").val() }
                }).success(function (data) {
                    alert("Report mailed successfully!")
                    $('#loading').hide();
                })
            }
        }
        $scope.ReportExport = function () {
            $('#loading').show();
            $scope.ReportContent = $("#rptTableContent").html();
            $http({
                method: 'Post',
                url: '/BI/Report/ExportReport',
                data: { ReportContent: $scope.ReportContent }
            }).success(function (data) {
                alert(data);
                $('#loading').hide();
                window.open(data, "_blank");

            })
        }

        $scope.ReportPrint = function () {
            localStorage.setItem("ReportContent", $("#rptTableContent").html());
            //alert($("#rptTableContent").html());
            window.open("/BI/Report/PrintReport", "_blank");
        }

        $scope.PrintReportInint = function () {

            $("#PrintReportdata").html(localStorage.getItem("ReportContent"))
            window.print();
        }
        function ValidateBackupReceiptEmail() {
            var vl = true;
            var message = "";

            if ($("#reportmail").val() == "") {
                vl = false;
                message += "Please insert Email ID.<br/>";
            }
            if ($("#reportmail").val() != "") {
                var emailReg = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
                var valid = emailReg.test($("#reportmail").val());

                if (!valid) {
                    vl = false;
                    message += "Invalid Email ID.<br/>";
                }
            }
            $("#ErrorMessage").html(message);
            return vl;
        }
    };
})();