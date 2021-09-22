//Arrow Functions
let sum1 = (x: number, y: number): number => {
    return x + y;
}
sum1(10, 20); //returns 30

//Parameterless Arrow Function
let Print = () => console.log("Hello TypeScript");
Print(); //Output: Hello TypeScript

//Arrow Function in Class
class Employee {
    empCode: number;
    empName: string;

    constructor(code: number, name: string) {
        this.empName = name;
        this.empCode = code;
    }

    display = () => console.log(this.empCode +' ' + this.empName)
}
let emp = new Employee(1, 'Ram');
emp.display();