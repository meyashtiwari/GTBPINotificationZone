<%@ Page Title="" Language="C#" MasterPageFile="~/loginpanel.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="GTBPINotificationZone.login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <p>
    
        <asp:Image ID="Image1" runat="server" 
            style="position:absolute; top: 174px; left: 17px; height: 556px; width: 275px;" 
            ImageUrl="~/images/Untitled design.jpg" />
        <asp:Image ID="Image2" runat="server" 
            style="position:absolute; top: 174px; left: 967px; height: 552px; width: 318px;" 
            ImageUrl="~/images/1.jpg" />
    
            <asp:HyperLink ID="forgotlink" runat="server" 
                style="position:absolute; top: 655px; left: 566px; height: 20px; right: -246px;" 
                Font-Bold="True" Font-Names="hobo std" ForeColor="#0033CC" 
                NavigateUrl="~/forgotpassword.aspx?n=1">Forgot Password</asp:HyperLink>
            <asp:HyperLink ID="registerlink" runat="server" 
                style="position:absolute; top: 686px; left: 534px;" Font-Bold="True" 
                Font-Names="obo std" ForeColor="Blue" NavigateUrl="~/register.aspx?n=1">Not registered ? Register Here</asp:HyperLink>
        </p>
    <p>
        <asp:Label ID="Label1" runat="server" 
            style="position:absolute; top: 612px; left: 317px; height: 20px;" 
            Font-Bold="True" Font-Size="Large"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    
        <asp:Panel ID="lpanel" runat="server" 
            
            
            
        
        style="position:absolute; top: 193px; left: 392px; height: 403px; width: 449px;">
            <asp:Image ID="loginimg" runat="server" 
    ImageUrl="~/images/login1.png" style="position:absolute; top: -19px; left: 49px;" />
            <asp:ImageButton ID="loginb" runat="server" 
                style="position:absolute; top: 289px; left: 225px;" 
                ImageUrl="~/images/login.png" onclick="ImageButton1_Click" />
           
            <asp:TextBox ID="loginid" runat="server" 
                style="position:absolute; top: 126px; left: 243px;"></asp:TextBox>
           
            <asp:TextBox ID="password" runat="server" 
                style="position:absolute; top: 193px; left: 245px;" TextMode="Password"></asp:TextBox>
            
        </asp:Panel>
        <p>
            &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="slabel" runat="server" Text="ID or Roll No" 
            style="position:absolute; top: 322px; left: 503px; height: 19px;" 
            Font-Bold="True" Font-Names="hobo std" Font-Size="Large"></asp:Label>
        <asp:Label ID="plabel" runat="server" Text="Password" 
            style="position:absolute; top: 387px; left: 503px; height: 26px; right: 699px;" Font-Bold="True" 
            Font-Names="hobo std" Font-Size="Large"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Enter password" 
            style="position:absolute; top: 420px; left: 642px;" 
            ControlToValidate="password"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="loginid" ErrorMessage="Enter ID or Roll No" 
            style="position:absolute; top: 353px; left: 637px;"></asp:RequiredFieldValidator>
    </p>
    </form>
</asp:Content>
