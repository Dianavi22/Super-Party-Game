let bullet = 1;
let chamber = 6;
let spin = Math.floor(Math.random() * chamber) + 1;

if (bullet === spin) {
  console.log("Bang! You're dead.");
} else {
  console.log("Click. You're safe.");
}