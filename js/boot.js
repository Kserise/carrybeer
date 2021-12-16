const btn = document.querySelectorAll('nav ul li');

function btncolor(){
	this.classList.add("active");
}
function nonactive(){
	btn.forEach((item) =>
	item.classList.remove("active"));
}
btn.forEach((item) => item.addEventListener('mouseover', btncolor));
btn.forEach((item) => item.addEventListener('mouseleave', nonactive));
