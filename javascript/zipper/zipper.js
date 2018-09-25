class Zipper {
  constructor(tree) {
    // quick hack for deep object clone.
    this.tree = JSON.parse(JSON.stringify(tree));
    this.focus = [];
  }

  static fromTree(tree) {
    return new Zipper(tree);
  }

  toTree() {
    return this.tree;
  }

  left() {
    const subtree = this.getSubtree();
    if (subtree.left) {
      this.focus.push('left');
      return this;
    }
    return null;
  }

  right() {
    const subtree = this.getSubtree();
    if (subtree.right) {
      this.focus.push('right');
      return this;
    }
    return null;
  }

  value() {
    const subtree = this.getSubtree();
    return subtree.value;
  }

  up() {
    if (this.focus.length > 0) {
      this.focus.pop();
      return this;
    }
    return null;
  }

  setValue(value) {
    const subtree = this.getSubtree();
    subtree.value = value;
    return this;
  }

  setLeft(left) {
    const subtree = this.getSubtree();
    subtree.left = left;
    return this;
  }

  setRight(right) {
    const subtree = this.getSubtree();
    subtree.right = right;
    return this;
  }

  getSubtree(subtree = null, step = 0) {
    if (step == 0) {
      subtree = this.tree;
    }

    if (step == this.focus.length) {
      return subtree;
    }

    return this.getSubtree(subtree[this.focus[step]], step + 1);
  }
}

export default Zipper;
