// Image UpLoad Javascript
var file;

function updatePhoto(event) {
	var reader = new FileReader();
	reader.onload = function(event) {
		//Create an imagem
		var img = new Image();
		img.onload = function() {
			//Put imagen on screen
			const canvas = $("#photo")[0];
			const ctx = canvas.getContext("2d");
			ctx.drawImage(img,0,0,img.width,img.height,0,0,550, 450);
		}
		img.src = event.target.result;
	}

	file = event.target.files[0];
	//Obtain the file
	reader.readAsDataURL(file);
}

function uploadImage() {
    if(file != null) {
        sendFile(file);
        //Release the resources alocated to the selected image
        window.URL.revokeObjectURL(picURL);    
    }
    else alert("Missing image!");
}

function sendFile(file) {
	var data = new FormData();
	data.append("myFile", file);
	

	//Obtain nameImg and authorImg and fill the form
	var name = document.getElementById("nameImg").value;
	
	var author = document.getElementById("authorImg").value;
	data.append("nameImg", name);
	data.append("authorImg", author);
	if (name == "" || author == "") alert("Missing name and/or author!" + " ---" + name+ author) ;
	else {
		var xhr = new XMLHttpRequest();
		xhr.open("POST", "/upload");
		xhr.upload.addEventListener("progress", updateProgress(this), false);
		xhr.send(data);
	}
}

function updateProgress(evt){
	if(evt.loaded == evt.total) alert("Okay");
}
