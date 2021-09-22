//Array Declaration and Initialization
var fruits;
fruits = ['Apple', 'Orange', 'Banana'];
//Access Array Elements
fruits[0];
var ids;
ids = [23, 34, 100, 124, 44];
//Multi Type Array
var values = ['Apple', 2, 'Orange', 3, 4, 'Banana'];
/* or
let values: Array<string | number> = ['Apple', 2, 'Orange', 3, 4, 'Banana'];*/
//Access Array Elements using Loop
var fruits1 = ['Apple', 'Orange', 'Banana'];
for (var index in fruits) {
    console.log(fruits[index]); // output: Apple Orange Banana
}
for (var i = 0; i < fruits.length; i++) {
    console.log(fruits[i]); // output: Apple Orange Banana
}
