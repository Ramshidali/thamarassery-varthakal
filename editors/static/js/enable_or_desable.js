function toggle_district(selectedRadioId, targetId){
 if(selectedRadioId == "Kerala"){
  document.getElementById(targetId).style.display = "inline";
  document.getElementById("id_district").disabled = false;
 }
 else if(selectedRadioId != "kerala"){
  document.getElementById(targetId).style.display = "none";
  document.getElementById("id_district").disabled = true;
 }
}

function toggle_place(){
				if(document.getElementById("id_district").value == "11"){
					document.getElementById("id_place_div").style.display = "inline";
					document.getElementById("id_place").disabled = false;
				}
				else{
					document.getElementById("id_place_div").style.display = "none";
					document.getElementById("id_place").disabled = true;
				}
			}