/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

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
