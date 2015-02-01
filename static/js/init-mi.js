
$.extend( $.fn.dataTable.defaults, {
    dom: '<"elementPanel"
            <"title"
                <"left"f>
                <"right"p>
            >
            <"content"t>
            <"footer"
                <"left"l>
                <"left"i>
                <"right"p>
            >
        >
    ',
    responsive: true,
    iDisplayLength: 25,
    deferRender: false,
    processing: true,
    serverSide: true,
    paging: true,
    searching: true,
    ordering: true,
    language: {
        searchPlaceholder: "Zoeken...",
        sSearch: ""
    }
} );

$(function() {
    $('.logoutbutton').click(function() {
        swal({
             title: "Screw you guys..."
            ,showCancelButton: true
            ,confirmButtonText: "I'm going home!"
            ,cancelButtonText: "annuleren"
            ,imageUrl: "/static/images/cartman.jpg"
          }, function(){
            window.location = '/logout';
        });
    });
});
