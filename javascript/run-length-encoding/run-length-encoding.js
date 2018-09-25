exports.encode = function (string) {
  let counter = 1;
  let output = '';
  for (let i = 0; i < string.length; i++) {
    if (string[i] == string[i + 1]) {
      counter++;
    } else {
      if (counter > 1) {
        output += counter;
      }
      output += string[i];
      counter = 1;
    }
  }
  return output;
};

exports.decode = function (string) {
  let output = '';
  let number = '';
  for (let i = 0; i < string.length; i++) {
    if (!isNaN(parseInt(string[i]))) {
      number += string[i];
    } else {
      const count = isNaN(parseInt(number)) ? 1 : parseInt(number);
      output += string[i].repeat(count);
      number = '';
    }
  }
  return output;
};
