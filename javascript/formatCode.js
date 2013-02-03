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
	
	var html = "";
 	for(var i=0; i<list.length; i++)
		html += "zkl@zkl$ "+list[i]+"\n";
	
	obj.innerHTML = html;
}
