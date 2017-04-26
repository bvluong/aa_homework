function betterThanAverage(classPoints, yourPoints) {
  var sum = 0;
  for (var i = 0; i < classPoints.length; i++) {
    sum += classPoints[i];
   }
   return yourPoints > (sum/classPoints.length);
}
console.log(betterThanAverage([100, 40, 34, 57, 29, 72, 57, 88], 75));


function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`;
}

console.log(madLib('make', 'best', 'guac'));


function isSubstring(searchString, subString) {
  if (searchString.includes(subString)) {
    return true;
  } else {
    return false;
  }
}
console.log(isSubstring("time to program", "time"));
// true
console.log(isSubstring("Jump for joy", "joys"));
// false


function fizzBuzz(array) {
  var answer = [];
  for (var i = 0; i < array.length; i++) {
    if (array[i]%3 === 0 || array[i]%5 === 0) {
      if (!(array[i]%15 === 0)) {
        answer.push(array[i]);
      }
    }
  }
  return answer;
}

console.log(fizzBuzz([2,1,3,4,5,6,4,5,15,25,30]));



function isPrime(number) {
  for (var i = 2; i < number-1; i++) {
    if (number%i === 0 && number !== i) {
      return false;
    }
  }
  return true;
}


console.log(isPrime(2));
// true

console.log(isPrime(10));
// false

console.log(isPrime(15485863));
// true

console.log(isPrime(3548563));
// false

function sumOfNPrimes(n) {
  var count = 2;
  var array = [];
  while (array.length < n) {
      if (isPrime(count)) {
        array.push(count);
      }
      count += 1;
  }
  return array.reduce(function(a,b)
  {return a+b;
  }, 0);
}


console.log(sumOfNPrimes(0));
// 0

console.log(sumOfNPrimes(1));
// 2

console.log(sumOfNPrimes(4));
// 17


function printCallback(item) {
  return `Mx. ${item} Jingleheimer Schimdt`;
}

function titleize(array, cb) {
  array.forEach(el => console.log(cb(el)));
}
titleize(["Mary", "Brian", "Leo"], printCallback);
// Mx. Mary Jingleheimer Schmidt
// Mx. Brian Jingleheimer Schmidt
// Mx. Leo Jingleheimer Schmidt

function Elephant(name,height,tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}


Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes phrRRRRRRRRRRR!!!!!!!!`);
}

let elephant1 = new Elephant("Bryant",10,["jump","fly"]);
elephant1.trumpet()
// should print "(name) the elephant goes 'phrRRRRRRRRRRR!!!!!!!'"
Elephant.prototype.grow = function() {
  this.height += 12
}
elephant1.grow()
console.log(elephant1.height);
// should increase the elephant's height by 12 inches
Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
}

elephant1.addTrick("blow")
console.log(elephant1.tricks);

// add a new trick to their existing repertoire
Elephant.prototype.play = function() {
  console.log(`${this.name} is ${this.tricks[Math.floor(Math.random()*this.tricks.length)]}`);
}
elephant1.play()

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function(elephant) {
  console.log(`${elephant.name} is trotting by`);
}
Elephant.paradeHelper(micah);
herd.forEach(Elephant.paradeHelper);
herd.forEach(el => Elephant.paradeHelper(el));

function dinerBreakfast() {
  order = "I'd like cheesy scrambled eggs please.";
  console.log(order);
  return function (food) {
    order = order.slice(0,order.length-1) + ` and ${food}.`;
    console.log(order);
  }
}
let breakfast = dinerBreakfast("asdasdada");
breakfast();
breakfast("grits");
breakfast("chocolate chip pancakes");
