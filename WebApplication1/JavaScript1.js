
    $(document).ready(function () {

        $.ajax({
            type: "POST",
            url: "WebForm1.aspx/OnSubmit",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                $("#Content").text(response.d);
                alert(response.d);
            },
            error: function (response) {
                alert(response);
            }
        });
    });
