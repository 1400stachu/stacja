let sliderMinimum = document.getElementById("minimum-range");
let sliderMaximum = document.getElementById("maximum-range");
let spanMinimum = document.getElementById("minimum-price-value");
let spanMaximum = document.getElementById("maximum-price-value");

spanMinimum.innerHTML = sliderMinimum.value;

sliderMinimum.oninput = function() {
    spanMinimum.innerHTML = sliderMinimum.value;
}

spanMaximum.innerHTML = sliderMaximum.value;

sliderMaximum.oninput = function() {
    spanMaximum.innerHTML = sliderMaximum.value;
}
