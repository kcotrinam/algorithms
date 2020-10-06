function rangeOfNumbers(startNum, endNum) {
  if (startNum === endNum) {
    return [startNum];
  } else {
    const newArr = rangeOfNumbers(startNum, endNum - 1);
    newArr.push(endNum);
    return newArr;
  }
}

console.log(rangeOfNumbers(6, 9));
