var $htmlAndBody = $('html, body');
var fixedNavHeight = 100;
var pathname = window.location.pathname;
var $document = $(document);

$document.ready(function(){
  var pageHash = window.location.hash
  if (pageHash.length > 0) {
    $document.one('scroll', function(){
			var scrollPosition = Math.floor( $document.scrollTop() );
			var hashReferencedPosition = Math.floor( $(pageHash).offset().top );
      if (scrollPosition === hashReferencedPosition) {
        $document.scrollTop(hashReferencedPosition - fixedNavHeight);
			}
    });
  }
})

$document.on('click', 'a.top', function(event){
  event.preventDefault();
  $htmlAndBody.animate({ scrollTop: 0 });
});

$document.on('click', '.services-menu li a', function(event){
  if (pathname !== '/services') return;
  event.preventDefault();
  var anchor = event.target.getAttribute('href').replace(pathname, '')
  $htmlAndBody.animate({
    scrollTop: $(anchor).offset().top - fixedNavHeight
  });
});
