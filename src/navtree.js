document.addEventListener("DOMContentLoaded", function() {
    // Finde alle Knoten des Navigationsbaums und klappe sie zu
    var treeNodes = document.querySelectorAll('.item');
    treeNodes.forEach(function(node) {
        if (node.classList.contains('open')) {
            node.classList.remove('open');
        }
    });
});
