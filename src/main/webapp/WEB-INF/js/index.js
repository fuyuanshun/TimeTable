$(function(){
    $("#button").click(function(){
        var json = $("#myform").serialize();
        $.ajax({
            async : true,
            url : "/TimeTable/insert",
            data : json,
            method : "POST",
            success : function(){
                console.info("success!");
                $(window).attr('location', "/TimeTable/index");
            }
        })
    })
})