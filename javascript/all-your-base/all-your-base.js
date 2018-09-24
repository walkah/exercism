class Converter {

  convert(digits, inputBase, outputBase) {
    // validate in/out bases
    if (inputBase < 2 || !Number.isInteger(inputBase)) {
      throw Error('Wrong input base')
    }
    if (outputBase < 2 || !Number.isInteger(outputBase)) {
      throw Error('Wrong output base')
    }

    // Validate digits.
    if (!digits.length || (digits[0] == 0 && digits.length != 1)) {
      throw Error('Input has wrong format');
    } else if (digits[0] == 0 && digits.length == 1){
      return digits;
    }

    // Convert to base 10
    let sum = 0;
    let i = 0;
    while (digits.length > 0) {
      let d = digits.pop();
      if (d >= inputBase || d < 0) {
        throw Error('Input has wrong format');
      }
      sum += d * (inputBase ** i);
      i++;
    }

    // Convert to outputBase
    let output = [];
    while (sum > 0) {
      output.unshift(sum % outputBase);
      sum = Math.floor(sum / outputBase);
    }
    return output;
  }
}

export default Converter;
