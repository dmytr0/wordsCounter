function activeFile() {
	document.getElementById('inpText').disabled = true; 
	document.getElementById('selectFile').disabled = false;
}

function activeFields() {
	document.getElementById('inpText').disabled = false; 
	document.getElementById('selectFile').disabled = true;
}
