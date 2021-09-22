//Simple for loop
for (let i = 0; i < 3; i++) {
    console.log ("Block statement execution no." + i);
  }

//for..of Loop
let arr = [10, 20, 30, 40];

for (var val of arr) {
  console.log(val); // prints values: 10, 20, 30, 40
}

//for..in Loop
let arr1 = [10, 20, 30, 40];
for (var index in arr1) {
  console.log(index); // prints indexes: 0, 1, 2, 3

  console.log(arr[index]); // prints elements: 10, 20, 30, 40
}