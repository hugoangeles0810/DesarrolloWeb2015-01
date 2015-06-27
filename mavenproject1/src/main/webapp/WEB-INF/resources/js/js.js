/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function operacion_con_dos_numeros(indice, num1, num2){
	/*var indice = form.cap.selectedIndex;
	var num1 = eval(form.expr1.value);
	var num2 = eval(form.expr2.value);*/
        var rspta=0;
	if(indice===0){rspta = num1+num2;}
	if(indice===1){rspta= num1-num2;}
	if(indice===2){rspta = num1*num2;}
	if(indice===3){if (num2===0) 
            {rspta = "la Division por cero no existe";}
	 else {rspta = num1/num2;}}
        return rspta;
				}
                                
