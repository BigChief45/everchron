module.exports = value;

function value(arg) {
  if ( typeof arg != "function" ) {
    return arg;
  }
  else {
    return value(arg());
  }
  
}