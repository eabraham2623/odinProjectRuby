// Practice 1

// declare function
console.log("Practice #1\n");
function add7(number)
{
    return number + 7;
}
console.log(add7(5));

// functional expression
let addSevenExpr = function(number) {
    return number + 7;
};
console.log(addSevenExpr);

console.log(addSevenExpr(2));

// arrow function
let addSevenArrow = (num) => num + 7;

console.log(addSevenArrow);
console.log(addSevenArrow(1));

// Practice 2
let multiply = (a, b) => a * b;
console.log("\nPractice #2\n");
console.log(multiply(5, 2));

// Practice 3
function capitalize(str)
{
    let upperCaseFirst = str.charAt(0).toUpperCase();
    let strLength = str.length;

    return upperCaseFirst + str.substring(1, strLength);
}
console.log("\nPractice #3\n");

console.log(capitalize("batman"));
console.log(capitalize("SUPERMAN"));
console.log(capitalize("spider-man"));

// Practice 4
let lastLetter = (str) => str.slice(-1);

console.log("\nPractice #4\n");
console.log(lastLetter("abcd"));