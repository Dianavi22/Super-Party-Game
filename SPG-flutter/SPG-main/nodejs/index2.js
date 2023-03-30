var fs = require('fs');
var content = fs.readFileSync('data2.json','utf8');

const dataObj = JSON.parse(content);
console.log(dataObj)