function StringBuffer() {
    this._strings = [];
    if (arguments.length == 1) {
        this._strings.push(arguments[0]);
    }
}

StringBuffer.prototype.append = function (str) {
    this._strings.push(str);
    return this;
}

StringBuffer.prototype.toString = function () {
    return this._strings.join("");
}

StringBuffer.prototype.length = function () {
    var str = this._strings.join("");
    return str.length;
}

StringBuffer.prototype.del = function (num) {
    var len = this.length();
    var str = this.toString();
    str = str.slice(0, len - num);
    this._strings = [];
    this._strings.push(str);
}

String.prototype.trim = function () {
    return this.replace(/^\s*|\s*$/g, "")
}
Array.prototype.contain = function (e) {
    for (i = 0; i < this.length; i++) {
        if (this[i] == e) return true;
    }
    return false;
}