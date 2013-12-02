<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studData.aspx.cs" Inherits="BootstrapSample.studData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
   
      <div class="row">
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/dew_drops.jpg" Width="200" Height="200" class="img-rounded"/>
      <div class="caption">
        <h3>Thumbnail label</h3>
        <p>...</p>
        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
      </div>
    </div>
  </div>
          <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/dew_drops.jpg" Width="200" Height="200" class="img-circle"/>
      <div class="caption">
        <h3>Thumbnail label</h3>
        <p>...</p>
        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
      </div>
    </div>
  </div>
          <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
        <asp:Image ID="Image3" runat="server" ImageUrl="~/dew_drops.jpg" Width="200" Height="200" class="img-thumbnail"/>
      <div class="caption">
        <h3>Thumbnail label</h3>
        <p>...</p>
        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
      </div>
    </div>
  </div>
</div>  
   
</body>
</html>
