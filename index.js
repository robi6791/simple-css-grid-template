const text = document.getElementById("text");
let shadow = "";

for (var i = 0; i < 4; i++) {
  shadow += (shadow ? "," : "") + -i * 1 + "px " + i * 1 + "px 0 #00465d";
}

text.style.textShadow = shadow;
