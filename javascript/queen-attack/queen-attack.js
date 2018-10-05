const GRID_SIZE = 8;

export default class Queens {

  constructor(defaultPositions = {}) {
    this.setPosition('white', defaultPositions.white || [0, 3]);
    this.setPosition('black', defaultPositions.black || [7, 3]);
  }

  toString() {
    let board = [];
    for (let x = 0; x < GRID_SIZE; x += 1) {
      const row = [];
      for (let y = 0; y < GRID_SIZE; y += 1) {
        if (Queens.isEqual(this.white, [x, y])) {
          row.push('W');
        } else if (Queens.isEqual(this.black, [x, y])) {
          row.push('B');
        } else {
          row.push('_');
        }
      }
      board += `${row.join(' ')}\n`;
    }
    return board;
  }

  canAttack() {
    if (this.white[0] === this.black[0]) {
      return true; // Same Row
    } else if (this.white[1] === this.black[1]) {
      return true; // Same Column
    } else if ((Math.abs(this.white[0] - this.black[0])) ===
               (Math.abs(this.white[1] - this.black[1]))) {
      return true; // On a diagonal
    }
    return false;
  }

  setPosition(color, position) {
    if (Queens.isEqual(position, this.getOpponentPosition(color))) {
      throw Error('Queens cannot share the same space');
    }

    this[color] = position;
  }

  getOpponentPosition(color) {
    return (color === 'white') ? this.black : this.white;
  }

  static isEqual(pos1, pos2) {
    return JSON.stringify(pos1) === JSON.stringify(pos2);
  }
}
