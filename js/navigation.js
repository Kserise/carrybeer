const list = document.querySelectorAll(".list");

function activeList(){
    list.forEach((item) =>
        item.classList.remove("active"));
    this.classList.add("active");
}
list.forEach((item) =>
    item.addEventListener('mouseover', activeList)
)


const nav = document.querySelector(".navigation");
function activeNav(){
	nav.classList.toggle("active");
}
nav.addEventListener("click", activeNav);