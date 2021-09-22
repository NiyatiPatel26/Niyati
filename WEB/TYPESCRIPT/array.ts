//Array Declaration and Initialization
let fruits: Array<string>;
fruits = ['Apple', 'Orange', 'Banana']; 

//Access Array Elements
fruits[0];

let ids: Array<number>;
ids = [23, 34, 100, 124, 44]; 

//Multi Type Array
let values: (string | number)[] = ['Apple', 2, 'Orange', 3, 4, 'Banana']; 
/* or 
let values: Array<string | number> = ['Apple', 2, 'Orange', 3, 4, 'Banana'];*/

//Access Array Elements using Loop
let fruits1: string[] = ['Apple', 'Orange', 'Banana']; 
for(var index in fruits)
{ 
    console.log(fruits[index]);  // output: Apple Orange Banana
}
for(var i = 0; i < fruits.length; i++)
{ 
    console.log(fruits[i]); // output: Apple Orange Banana
}

fruits.sort(); 
console.log(fruits); //output: [ 'Apple', 'Banana', 'Orange' ]

console.log(fruits.pop()); //output: Orange

fruits.push('Papaya'); 
console.log(fruits); //output: ['Apple', 'Banana', 'Papaya']

fruits = fruits.concat(['Fig', 'Mango']); 
console.log(fruits); //output: ['Apple', 'Banana', 'Papaya', 'Fig', 'Mango'] 

console.log(fruits.indexOf('Papaya'));//output: 2
