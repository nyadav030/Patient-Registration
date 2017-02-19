// Application module
var crudApp = angular.module('crudApp',[]);
crudApp.controller("DbController",['$scope','$http', function($scope,$http){

// Function to get Patient details from the database
getInfo();
function getInfo(){
// Sending request to pDetails.php files 
$http.post('databaseFiles/pDetails.php').success(function(data){
// Stored the returned data into scope 
$scope.details = data;
});
}

// Setting default value of gender 
$scope.pInfo = {'gender' : 'male'};
// Enabling show_form variable to enable Add Patient button
$scope.show_form = true;
// Function to add toggle behaviour to form
$scope.formToggle =function(){
$('#pForm').slideToggle();
$('#editForm').css('display', 'none');
}
$scope.insertInfo = function(info){
$http.post('databaseFiles/insertDetails.php',{"name":info.name,"lname":info.lname,"age":info.age,"dob":info.dob,"email":info.email,"gender":info.gender,"phone":info.phone,"address":info.address}).success(function(data){
if (data == true) {
getInfo();
$('#pForm').css('display', 'none');
}
});
}
$scope.deleteInfo = function(info){
$http.post('databaseFiles/deleteDetails.php',{"del_id":info.p_id}).success(function(data){
if (data == true) {
getInfo();
}
});
}
$scope.currentUser = {};
$scope.editInfo = function(info){
$scope.currentUser = info;
$('#pForm').slideUp();
$('#editForm').slideToggle();
}
$scope.UpdateInfo = function(info){
$http.post('databaseFiles/updateDetails.php',{"id":info.p_id,"name":info.p_name,"lname":info.p_lname,"age":info.p_age,"dob":info.p_dob,"email":info.p_email,"gender":info.p_gender,"phone":info.p_phone,"address":info.p_address}).success(function(data){
$scope.show_form = true;
if (data == true) {
getInfo();
}
});
}
$scope.updateMsg = function(p_id){
$('#editForm').css('display', 'none');
}
}]);