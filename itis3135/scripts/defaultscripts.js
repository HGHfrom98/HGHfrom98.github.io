
//time and date
function timeDate() {
document.getElementById("timeAndDate").innerHTML = Date();
}

//get data + response
function nameMood(){
    var nameValue = document.getElementById("nameID").value;
    var moodVal = document.getElementById("moodID").value;

    document.getElementById("response").innerHTML = 
    "Hunter's Dependable Contractors welcomes you, " + nameValue + 
    ". We're glad you are doing " + moodVal + ".";
}

//change background color
function bgc(){
     document.body.style.background = "skyblue"; 
}

//revert background color
function rbgc(){
    document.body.style.background = "#CEEC97"; 
}

//insult
function insult(){
    let number = Math.floor((Math.random * 5) + 1);
    if (number = 1){
        document.getElementById("insult").innerHTML = "You are lame";
    } else if (number = 2) {
        document.getElementById("insult").innerHTML = "You stink";
    } else if (number = 3) {
        document.getElementById("insult").innerHTML = "Go brush your teeth";
    } else if (number = 4) {
        document.getElementById("insult").innerHTML = "Those pants don't look good on you";
    } else if (number = 5) {
        document.getElementById("insult").innerHTML = "You're so 2000-and-late";
    }
}

//hideInsult
function hideInsult(){
    document.getElementById("insult2").innerHTML = "Nice Try, crybaby";
}

//bold
function bold(){
    document.body.style.fontFamily = "Impact", "Charcoal", sans-serif;
}


//unbold
function unbold(){
    document.body.style.fontFamily = 'Inter', sans-serif;
}