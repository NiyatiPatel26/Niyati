//Arrow Functions
var sum1 = function (x, y) {
    return x + y;
};
sum1(10, 20); //returns 30
//Parameterless Arrow Function
var Print = function () { return console.log("Hello TypeScript"); };
Print(); //Output: Hello TypeScript
//Arrow Function in Class
var Employee = /** @class */ (function () {
    function Employee(code, name) {
        var _this = this;
        this.display = function () { return console.log(_this.empCode + ' ' + _this.empName); };
        this.empName = name;
        this.empCode = code;
    }
    return Employee;
}());
var emp = new Employee(1, 'Ram');
emp.display();
