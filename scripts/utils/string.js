/**
 * @param {String} string
 * @returns {String}
 */
const capitalize = (string) => string[0].toUpperCase() + string.slice(1);
/**
 * @param {String} string
 * @returns {String}
 
 */
const encodeEscapeChars = (string) =>
  string.replaceAll("'", "\\'").replaceAll("\r", "\\r").replaceAll("\n", "\\n");

module.exports = {
  capitalize,
  encodeEscapeChars,
};
