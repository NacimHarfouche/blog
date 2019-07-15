// barre de recherche
let searchBarElt = $("#searchBar");
let divResultElt = $("#resultSearch");

function ajaxRequest() {
	$.getJSON("searchArticle.php?searchBar=" + searchBarElt.val(), searchIt);
}

function searchIt(data) {
	let word = searchBarElt.val();
	divResultElt.empty();
	if (word) {
		for (let search of data) {
			let paraElt = $("<p>").text(search.title);
			divResultElt.append(paraElt);
		}
	}
}

searchBarElt.on("keyup", ()=> {
	ajaxRequest();
});

// bouton login 
let buttonLoginElt = $("#login");

buttonLoginElt.on("click", ()=> {
	$("#formLogin").show("slow");
});