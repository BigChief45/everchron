## Word Challenge Exercise

Write a program which, given a dictionary, generates two
output files, 'sequences' and 'words'.  'sequences' should
contain every sequence of four letters that appears in exactly
one word of the dictionary, one sequence per line.  'words'
should contain the corresponding words that contain the
sequences, in the same order, again one per line.

For example, given the trivial dictionary containing only

```
arrows
carrots
give
me
```

The outputs should be:

```
'sequences'             'words'

carr                    carrots
give                    give
rots                    carrots
rows                    arrows
rrot                    carrots
rrow                    arrows
```

Of course, 'arro' does not appear in the output, since it is
found in more than one word.

For the final solution, read in the following dictionary file: http://bit.ly/1jveLkY

# JavaScript Exercises

Exercises obtained from: https://github.com/kolodny/exercises

Here's the basic workflow:

```bash
[~]         $ git clone https://github.com/kolodny/exercises
[~]         $ cd exercises
[exercises] $ npm install
[exercises] $ cd debounce
[debounce]  $ vi index.js
[debounce]  $ npm test
```
This uses a basic TDD approach so take a look at the test.js file in each directory to see what needs to be implemented, write an index.js as the solution file

## Flatten

Here's the basic usage of the file that you'll be creating:

```js
var flatten = require('./') // <- this is the file you make;

var arr = [1, [2], [3, 4, [5]]];

flatten(arr); 
// => [1, 2, 3, 4, 5];

```

## Map

You might know about [map](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Array/map) method, let's implement your own `map` one.

`map` should function like `map` does:

```js
var map = require('./') // <- this is the file you make;

var numbers = [1, 2, 3];

var doubles = map(numbers, function(number) {
  return number * 2;
});

console.log(doubles); // [2, 4, 6]

```

More info: https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Array/map

## Value

Here's the basic usage of the file that you'll be creating:

```js
var value = require('./') // <- this is the file you make;

var scalar = 'foo';
var fn = function() { return 'bar'; };
var fnTwice = function() {
  return fn;
};
var fnThrice = function() {
  return fnTwice;
};

var whoa = function() {
  return function() {
    return function() {
      return function() {
        return function() {
          return function() {
            return function() {
              return function() {
                return function() {
                  return 'hi';
                };
              };
            };
          };
        };
      };
    };
  };
};

value(scalar);   // should be      'foo'
value(fn);       // should be      'bar'
value(fnTwice);  // should also be 'bar'
value(fnThrice); // should also be 'bar'

value(whoa);     // should be      'hi'

```
