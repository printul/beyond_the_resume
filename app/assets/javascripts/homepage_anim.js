$('#button-down').click(function(event) {
    // Preventing default action of the event
    event.preventDefault();
    // Getting the height of the document
    var n = $(document).height();
    $('html, body').animate({ scrollTop: 775 }, 800);
//                                       |    |
//                                       |    --- duration (milliseconds)
//                                       ---- distance from the top
});
