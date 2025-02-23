
let newValue ='null';
let oldValue = 'null';
let operationValue = 'null';
let numberValue = false;
let screen = document.getElementById("screen");

//button functions
function btn(btnVal){
 
    switch (true){

        //number button function started
        case (typeof btnVal == "number"):
            if(numberValue == false || screen.value == "0"){
                screen.value = btnVal;
            }else{
                screen.value += btnVal;
            }
            numberValue = true;
            break;

        //zero button function started
        case (btnVal == "0"):
            if(numberValue == false || screen.value == "0"){
                screen.value = btnVal;
            }else{
                screen.value += btnVal;
            }
            numberValue = true;
            break;

        //dot button function started
        case (btnVal == "."):

            //stop dot withour any number
            if(screen.value == '' || operationValue != "null" && numberValue == false){
                screen.value = "0" + btnVal;
            }else {
                screen.value += btnVal;
                screen.value = screen.value.replace(/(\..*)\./g, '$1');//rplace dot two or more
            }
            numberValue = true;
            break;

         //plusminus button function started
         case (btnVal == "+/-"):
            if(numberValue || screen.value != 0){
                    screen.value = screen.value * -1;
            }
                break;

        //division button function started
        case (btnVal == "/"):
            if(numberValue){

                //dislplay data stored
                if(oldValue == "null" || operationValue == "equel" || operationValue == "percentage"){
                        oldValue = parseFloat(screen.value);
                    }else {
                        newValue = parseFloat(screen.value);
                    }

                //operation started
                if(oldValue != "null" && newValue != "null"){
            if(operationValue == "plus"){
                    screen.value = oldValue + newValue;
                    oldValue = parseFloat(screen.value);
                }else if(operationValue == "minus"){
                        screen.value = oldValue - newValue;
                        oldValue = parseFloat(screen.value);
                }else if(operationValue == "multiplication"){
                    screen.value = oldValue * newValue;
                    oldValue = parseFloat(screen.value);
                }else if(operationValue == "division"){
                    if(newValue == "0"){
                        screen.value = "Cannot divide by zero";
                        oldValue = "null";
                        newValue = "null";
                    }else{
                    screen.value = oldValue / newValue;
                    oldValue = parseFloat(screen.value);
                }
                }
                }
                numberValue = false;
                dotValue = false;
    }
                operationValue = "division"; 
            break;

        //multiplication button function started
        case (btnVal == "*"):
            if(numberValue){

                //dislplay data stored
                if(oldValue == "null" || operationValue == "equel" || operationValue == "percentage"){
                        oldValue = parseFloat(screen.value);
                    }else {
                        newValue = parseFloat(screen.value);
                    }

                //operation started
                if(oldValue != "null" && newValue != "null"){
            if(operationValue == "plus"){                
                    screen.value = oldValue + newValue;
                    oldValue = parseFloat(screen.value);
                }else if(operationValue == "minus"){
                        screen.value = oldValue - newValue;
                        oldValue = parseFloat(screen.value);
                }else if(operationValue == "multiplication"){
                    screen.value = oldValue * newValue;
                    oldValue = parseFloat(screen.value);
                }else if(operationValue == "division"){
                    if(newValue == "0"){
                        screen.value = "Cannot divide by zero";
                        oldValue = "null";
                        newValue = "null";
                    }else{
                    screen.value = oldValue / newValue;
                    oldValue = parseFloat(screen.value);
                }
                }
                }
                numberValue = false;
    }
                operationValue = "multiplication"; 
            break;

        //minus button function started
        case (btnVal == "-"):
            if(numberValue){

                //dislplay data stored
                if(oldValue == "null" || operationValue == "equel" || operationValue == "percentage"){
                        oldValue = parseFloat(screen.value);
                    }else {
                        newValue = parseFloat(screen.value);
                    }

                //operation started
                if(oldValue != "null" && newValue != "null"){
            if(operationValue == "plus"){                
                    screen.value = oldValue + newValue;
                    oldValue = parseFloat(screen.value);
                }else if(operationValue == "minus"){
                        screen.value = oldValue - newValue;
                        oldValue = parseFloat(screen.value);
                }else if(operationValue == "multiplication"){
                    screen.value = oldValue * newValue;
                    oldValue = parseFloat(screen.value);
                }else if(operationValue == "division"){
                    if(newValue == "0"){
                        screen.value = "Cannot divide by zero";
                        oldValue = "null";
                        newValue = "null";
                    }else{
                    screen.value = oldValue / newValue;
                    oldValue = parseFloat(screen.value);
                }
                }
                }
                numberValue = false;
    }
                operationValue = "minus"; 
            break;

        //plus button function started
        case (btnVal == "+"):
            if(numberValue){

                //dislplay data stored
                if(oldValue == "null" || operationValue == "equel" || operationValue == "percentage"){
                        oldValue = parseFloat(screen.value);
                    }else {
                        newValue = parseFloat(screen.value);
                    }

                //operation started
                if(oldValue != "null" && newValue != "null"){
                    if(operationValue == "plus"){                
                            screen.value = oldValue + newValue;
                            oldValue = parseFloat(screen.value);
                        }else if(operationValue == "minus"){
                                screen.value = oldValue - newValue;
                                oldValue = parseFloat(screen.value);
                        }else if(operationValue == "multiplication"){
                            screen.value = oldValue * newValue;
                            oldValue = parseFloat(screen.value);
                        }else if(operationValue == "division"){
                            if(newValue == "0"){
                                screen.value = "Cannot divide by zero";
                                oldValue = "null";
                                newValue = "null";
                            }else{
                            screen.value = oldValue / newValue;
                            oldValue = parseFloat(screen.value);
                        }
                        }
                        }
                numberValue = false;
                dotValue = false;
    }
                operationValue = "plus";
            break;

        //equel button function started
        case (btnVal == "="):
        if(numberValue){

             //dislplay data stored
             if(oldValue == "null" || operationValue == "equel" || operationValue == "percentage"){
                oldValue = parseFloat(screen.value);
            }else {
                newValue = parseFloat(screen.value);
            }

        //operation started
        if(oldValue != "null" && newValue != "null"){
            if(operationValue == "plus"){
                    screen.value = oldValue + newValue;
                    oldValue = parseFloat(screen.value);
                }else if(operationValue == "minus"){
                        screen.value = oldValue - newValue;
                        oldValue = parseFloat(screen.value);
                }else if(operationValue == "multiplication"){
                    screen.value = oldValue * newValue;
                    oldValue = parseFloat(screen.value);
                }else if(operationValue == "division"){
                    if(newValue == "0"){
                        screen.value = "Cannot divide by zero";
                        oldValue = "null";
                        newValue = "null";
                    }else{
                    screen.value = oldValue / newValue;
                    oldValue = parseFloat(screen.value);
                }
                }
                }
        numberValue = false;
    }
            operationValue = "equel";
            break;

         //percentage button function started
         case (btnVal == "%"):
            if(numberValue){

                //dislplay data stored
                if(oldValue == "null" || operationValue == "equel" || operationValue == "percentage"){
                        oldValue = parseFloat(screen.value);
                    }else {
                        newValue = parseFloat(screen.value);
                    }

                //operation started
                if(oldValue != "null" && newValue != "null"){
                    if(operationValue == "plus"){                
                            screen.value = oldValue + newValue;
                            oldValue = parseFloat(screen.value);
                        }else if(operationValue == "minus"){
                                screen.value = oldValue - newValue;
                                oldValue = parseFloat(screen.value);
                        }else if(operationValue == "multiplication"){
                            screen.value = oldValue * newValue;
                            oldValue = parseFloat(screen.value);
                        }else if(operationValue == "division"){
                            if(newValue == "0"){
                                screen.value = "Cannot divide by zero";
                                oldValue = "null";
                                newValue = "null";
                            }else{
                            screen.value = oldValue / newValue;
                            oldValue = parseFloat(screen.value);
                        }
                        }
                        }

                        screen.value = oldValue / 100;
                        oldValue = parseFloat(screen.value);

                numberValue = false;
                dotValue = false;
    }

                operationValue = "percentage";
            break;

}//switch clsed

}//btn fuction closed

//clear button functions
function clearScreen(){
    screen.value = null;
    newValue ='null';
    oldValue = 'null';
    operationValue = 'null';
    numberValue = false;
}

//backspace button functions
function clearBack(){
    if(screen.value == "Cannot divide by zero"){
        screen.value = null;
    }else{
        screen.value = screen.value.slice(0, -1);
    }
}