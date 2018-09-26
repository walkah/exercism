const toRoman = function (number) {
  const numerals = { M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90, L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 };

  let roman = '';
  for (const n in numerals) {
    const value = Math.floor(number / numerals[n]);
    if (value > 0) {
      roman += n.repeat(value);
      number -= (value * numerals[n]);
    }
  }
  return roman;
};

export default toRoman;
