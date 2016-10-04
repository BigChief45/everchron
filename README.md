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
