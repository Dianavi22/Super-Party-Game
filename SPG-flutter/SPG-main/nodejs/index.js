var fs = require('fs');
var content = fs.readFileSync('data.json','utf8');




const dataObj = JSON.parse(content);

var tabData = [giraffeNeckValue = dataObj.giraffeNeck, frogJump = dataObj.frogJump,snakeDodge = dataObj.snakeDodge]

for (let i = 0; i < tabData.length; i++) {
    if(tabData[i]==true){
        console.log("this game is available")
    }else {
        console.log("you don't have this")
    }
  }

