//wasClicked for buttons
let plus = false;
let minus = false;
let divide = false;
let multiply = false;
let answer = 0;

let number1 = 0;
let number2 = 2;

    //plus
    function plusButton(){
        plus = true;
        minus = false;
        divide = false;
    }
    //minus
    function minusButton(){
        plus = false;
        minus = true;
        divide = false;
        multiply = false;
    }
    //divide
    function divideButton(){
        plus = false;
        minus = false;
        divide = true;
        multiply = false;
    }
    //multiply
    function multiplyButton(){
        plus = false;
        minus = false;
        divide = false;
        multiply = true;
    }

function calculate(){
    //establish number 1
    var number1 = document.getElementById("number1").value;

    //establish number 2
    var number2 = document.getElementById("number2").value;

    //calculations
    if (plus) {
        answer = (number1 + number2);
    } else if (minus) {
        answer = (number1 - number2);
    } else if (divide) {
        answer = (number1 / number2);
    } else if (multiply) {
        answer = (number1 * number2);
    }


    //change value to answer
    document.getElementById("answer").innerHTML = answer;
}