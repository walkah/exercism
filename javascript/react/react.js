export class InputCell {
  constructor(value) {
    this.value = value;
    this.computeCells = [];
  }

  setValue(value) {
    this.value = value;
    this.update();
    this.runCallbacks();
  }

  addCompute(cell) {
    this.computeCells.push(cell);
  }

  update() {
    this.computeCells.forEach((cell) => {
      cell.update();
    });
  }

  runCallbacks() {
    this.computeCells.forEach((cell) => {
      cell.runCallbacks();
    })
  }
}

export class ComputeCell {
  constructor(inputCells, fn) {
    this.fn = fn;
    this.valueChanged = false;
    this.computeCells = [];
    this.callbacks = [];
    this.addInputs(inputCells);
    this.update();
  }

  addCompute(cell) {
    this.computeCells.push(cell);
  }

  addCallback(callback) {
    callback.lastRunValue = callback.fn(this);
    this.callbacks.push(callback);
  }

  removeCallback(callback) {
    const i = this.callbacks.indexOf(callback);
    if (i >= 0) {
      this.callbacks.splice(i, 1);
    }
  }

  runCallbacks() {
    this.computeCells.forEach((cell) => {
      cell.runCallbacks();
    });

    this.callbacks.forEach((callback, i) => {      
      if (callback.lastRunValue !== this.value) {
        callback.update(this);
        callback.lastRunValue = this.value;
      }
    });  
  }

  addInputs(inputCells) {
    this.inputCells = inputCells;
    inputCells.forEach((cell) => {
      cell.addCompute(this);
    });
  }

  update() {
    this.value = this.fn(this.inputCells);
    this.computeCells.forEach((cell) => {
      cell.update();
    });
  }
}


export class CallbackCell {
  constructor(fn) {
    this.fn = fn;
    this.values = [];
  }

  update(cell) {
    this.values.push(this.fn(cell));
  }
}
