<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BootstrapSample.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
     <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" role="form">
    <div class="panel panel-default">
  <div class="panel-heading"><b>Login</b></div>
  <div class="panel-body">
    <table class="table">
        <tr>
            <td><span class="label label-info">Username</span></td><td>
                <asp:TextBox ID="uname_txt" runat="server" autocomplete="off" required="req" class="form-control" Width="200"></asp:TextBox></td>
        </tr>
        <tr>
            <td><span class="label label-info">Password</span></td><td>
                <asp:TextBox ID="pass_txt" runat="server" TextMode="Password" required="req" class="form-control" Width="200"></asp:TextBox></td>
           
        </tr>
        <tr>
            <td></td>
             <td><asp:Button ID="login_button" runat="server" class="btn btn-primary" Text="Login" OnClick="login_button_Click" /></td>
        </tr>
    </table>
  </div>
</div>
        <div class="alert alert-info"> 
            Invalid username or Password
        </div>
        </form>
</body>
</html>
