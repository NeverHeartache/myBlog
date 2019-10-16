/**
 * 
 */
$(function(){
	$('.ui.shape').shape();
	//左
	$('.ui.button.leftArrow').on("click",function(){
		$('.ui.shape').shape('flip left');
	});
	//右
	$('.ui.button.rightArrow').on("click",function(){
		$('.ui.shape').shape('flip right');
	});
	//上
	$('.ui.button.upArrow').on("click",function(){
		$('.ui.shape').shape('flip up');
	});
	//下
	$('.ui.button.downArrow').on("click",function(){
		$('.ui.shape').shape('flip down');
	});

	$('.ui.button.flipback').on("click",function(){
		$('.ui.shape').shape('flip back');
	});

	$('.ui.button.flipover').on("click",function(){
		$('.ui.shape').shape('flip over');
	});

});