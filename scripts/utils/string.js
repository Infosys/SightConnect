/**
 * @param {String} string
 * @returns {String}
 */
const capitalize = (string) => string[0].toUpperCase() + string.slice(1);

module.exports = {
  capitalize,
};
