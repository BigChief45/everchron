module.exports = flatten;

function flatten(array) {
  var a = array.slice(0); // Clones the array argument (which is passed by references)
  if (a.length == 0)
    return [];
    
  var flat = a.shift();
  
  if ( Object.prototype.toString.call(flat) == "[object Array]" ) {
    flat = flatten(flat);
  }
  else {
    flat = [flat];
  }
    
  return flat.concat(flatten(a));
}

