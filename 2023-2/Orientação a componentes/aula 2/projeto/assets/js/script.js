getElementById("add-container-button").addEventListener("click", function() {
   
    const newContent = `
    <section class="left-section">
    <a href="#">
        <img class="article-images" src="assets/img/astronaut-img.png" alt="astronaut">
    </a>
    </section>
    <section class="right-section">
    <a href="#">
        <img class="article-images" src="assets/img/satelite.jpg" alt="astronaut">
    </a>
    </section>
    <aside class="aside">
    <a href="#">
        <img class="article-images" src="assets/img/psyche-large.jpg" alt="astronaut">
    </a>
    </aside>
`;
document.getElementById("div-to-add-more-content")
.append(newContent)
})

