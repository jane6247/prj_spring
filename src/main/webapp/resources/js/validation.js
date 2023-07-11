checkOnlyNum = function(obj) {
	onlyNum = /^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$/;

    if(onlyNum.test($.trim(obj.val())) == false){
        alert("숫자만 입력해 주세요")
        obj.focus();
        return false;
    } else {
//    	by pass
    }
}