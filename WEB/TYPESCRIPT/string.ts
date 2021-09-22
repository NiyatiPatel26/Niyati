//Index()
let str: string = 'TypeScript';
str.indexOf('T'); // returns 0
str.indexOf('p'); // returns 2


//Replace()
let str1: string = 'Hello Javascript';
let str2: string = 'TypeScript';
str1.replace('Java', 'Type'); // returns 'Hello TypeScript'
str1.replace('JavaScript', str2); // returns 'Hello TypeScript'
console.log('Replaced string is: ' +str2); 

//Tolowercase()
let str3: string = 'Hello Typescript';
str.toLowerCase(); // returns hello typescript
'HELLO TYPESCRIPT'.toLowerCase(); // returns hello typescript