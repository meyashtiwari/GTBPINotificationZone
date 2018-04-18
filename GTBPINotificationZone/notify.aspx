<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="notify.aspx.cs" Inherits="WebApplication4.notify" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function noBack() {
            window.history.forward();
        }
        setTimeout("noBack()", 0);
        window.onunload = function () { null }
 </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server">
            <asp:ImageButton ID="ImageButton1" runat="server" 
    ImageUrl="~/images/bnz.png" onclick="ImageButton1_Click" />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
