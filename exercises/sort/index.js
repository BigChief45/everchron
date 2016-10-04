module.exports = sort;

function sort(array) {
  /* Merge Sort implementation */
  var a = array.slice(0);
  var n = a.length;
  
  if ( n == 1 )
    return a;
    
  var l1 = a.slice(0, n/2);
  var l2 = a.slice(n/2, n);
  
  l1 = sort(l1);
  l2 = sort(l2);
  
  function merge(x, y) {
    var c = [];
    
    while ( x.length > 0 && y.length > 0 ) {
      if ( x[0] > y[0] ) {
        c.push(y[0]);
        y.shift();
      }
      else {
        c.push(x[0]);
        x.shift();
      }
    }
    
    while ( x.length > 0 ) {
      c.push(x[0]);
      x.shift();
    }
    
    while ( y.length > 0 ) {
      c.push(y[0]);
      y.shift();
    }
    
    return c;
  }
  
  return merge(l1, l2);
    
}

