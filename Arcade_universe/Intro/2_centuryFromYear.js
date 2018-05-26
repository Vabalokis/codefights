function centuryFromYear(year) {
  var yr = Math.floor(year / 100) ;
  if (year % 100 == 0) {
    return yr;
  } else
  return yr+1;
}
