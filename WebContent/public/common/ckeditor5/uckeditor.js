$(function(){
	ClassicEditor.create( document.querySelector( '#editor' ), {
//		 toolbar: [ 'heading', '|', 'bold', 'italic', 'link' ]
	} )
	.then( editor => {
		window.editor = editor;
	} )
	.catch( err => {
		console.error( err.stack );
	} );
	$(".ck-content").css("heigth","700px!important");
});
