$(function () {
    $(".tdedit").dblclick(function() {
        var x = $(this).text();
        $(this).empty().append("<textarea class='edit' type='text' name='name' value='null'>" + x + "</textarea>");
        $(".edit").focus();
    })
    $(".tdedit").focusout(function () {
            var x = $(".edit").val();
            var idno = $(this).siblings("#idno").text();
            var columname = $(this).attr("columname");
            $(this).empty().append(x);
            var valall = 'function.php?idno=' + idno + '&columname=' + columname + '&val=' + x;
            // alert(valall);
            if (valall == 0) {
                document.getElementById("txtHint").innerHTML = "";
                return;
            } else {
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange = function () {

                    if (this.readyState == 4 && this.status == 200) {

                        var res = this.responseText;
                        

                        console.log(result ="------"+res);
                    }
                };
                xmlhttp.open("POST", valall, true);
                xmlhttp.send();
            }


    });
});