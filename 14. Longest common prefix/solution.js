var longestCommonPrefix = function(strs) {
  if (!strs.length) return ''; // return empty string if array empty
  let prefix = ''; //. empty prefix
  let maxPrefixLength = Math.min(...strs.map(str => str.length)); // Iterate through array and return shortest word -> shortest = max prefix length
  for (let i = 0; i < maxPrefixLength; i++) { // Run logic as long as i < maxPrefixLength and then run incremental
    let char = strs[0][i]; // current character of shortest string
    if (strs.every(str => str[i] === char)) { // Compares every el and the its targeted character with current current character
      prefix += char; // Add current character to prefix var
    } else {
      break; // Otherwise break
    }
  };  
  return prefix; // Return prefix
};

longestCommonPrefix(["flower","flow","flight"])