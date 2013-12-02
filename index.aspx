<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BootstrapSample.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css" rel="stylesheet" />
    <script src="//code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#alr').hide();
            $('#log').click(function () {
                $.ajax(
     {
         type: "POST",
         url: "/index.aspx/func",
         data: '{"uname":"' + $('#uname').val() + '","pass":"' + $('#pass').val() + '"}',
         contentType: "application/json;charset=utf-8",
         dataType: "json",
         async: true,
         cache: false,
         success: function (msg) {
             if (msg.d != "success") {

                 $('#alr').text("Invalid username or password");
                 $('#alr').show();
             }
             else {
                // $('#alr').text("---Access Granted---");
                 // $('#alr').show();
                 alert('Done...');
                 window.location.href = 'Homepage.aspx';
             }

         },
         error: function (x, e) {
            // alert("The call to the server side failed. " + x.responseText);
             $('#alr').text(x.responseText);
             $('#alr').show();
         }
     })
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="panel panel-success">
            <h1>Login</h1>
            Username<br/>
            <input type="text" id="uname" /><br />
            Password<br />
            <input type="password" id="pass" /><br />
            <input type="button" class="btn btn-primary" id="log" value="Login" />
        </div>
    <div class="alert alert-success" id="alr">Sample Alert</div>
    </form>
</body>
</html>
