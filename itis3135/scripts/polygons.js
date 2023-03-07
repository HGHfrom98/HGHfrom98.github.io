function getShape(){

    //Establish number
    var chosenNumber = document.getElementById("number").value;

    //Round up
    chosenNumber = Math.round(chosenNumber);
    
    //Convert negative
    if(chosenNumber < 0) {
        chosenNumber = (chosenNumber * -1);
    }

    if (chosenNumber == 1) {
        document.getElementById("shape").innerHTML = "Henagon";
    } else if (chosenNumber == 2) {
        document.getElementById("shape").innerHTML= "Digon";
    } else if (chosenNumber == 3) {
        document.getElementById("shape").innerHTML = "Trigon";
    } else if (chosenNumber == 4) {
        document.getElementById("shape").innerHTML = "Tetragon";
    } else if (chosenNumber == 5) {
        document.getElementById("shape").innerHTML = "Pentagon";
    } else if (chosenNumber == 6) {
        document.getElementById("shape").innerHTML = "Hexagon";
    }
}