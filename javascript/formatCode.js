function formatCode(codeare)
{
	var list = new Array();
	var obj = document.getElementById(codeare);
	list = obj.innerHTML.split("\n");
	
	var html = "<ol>";
 	for(var i=0; i<list.length; i++)
		html += "<li>"+list[i]+"</li>";
	
	html += "</ol>"
	obj.innerHTML = html;
}

function formatShellCode(codeare)
{
	var list = new Array();
	var obj = document.getElementById(codeare);
	list = obj.innerHTML.split("\n");
	
	var html = "<table><tr><td><table>";
	
	for(var i=0; i<list.length; i++)
		html+= "<tr class='prompt'><td>dameon@zkl$</td></tr>";

	html += "</table></td><td><table>";

 	for(var i=0; i<list.length; i++)
		html += "<tr class='cmd'><td>"+list[i]+"</td></tr>";
	
	html += "</td></tr></table>";
	obj.innerHTML = html;
}
