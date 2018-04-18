<%@ Page Title="" Language="C#" MasterPageFile="~/loginpanel.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="WebApplication4.adminlogin" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server" 
        style="position:absolute; top: 729px; left: 574px;" Font-Bold="True" 
        Font-Size="Large" ForeColor="Blue" NavigateUrl="~/adminforgotpassword.aspx?n=1">forgot password</asp:HyperLink>
    <asp:Image ID="aImage1" runat="server" 
            style="position:absolute; top: 174px; left: 17px; height: 556px; width: 275px;" 
            ImageUrl="~/images/Untitled design.jpg" />
    <asp:Image ID="aImage2" runat="server" 
            style="position:absolute; top: 174px; left: 967px; height: 552px; width: 318px;" 
            ImageUrl="~/images/1.jpg" />
    <asp:Panel ID="lpanel" runat="server" 
            
            
            
        style="position:absolute; top: 232px; left: 395px; height: 484px; width: 449px;">
        <asp:Image ID="aloginimg" runat="server" 
    ImageUrl="~/images/login1.png" style="position:absolute; top: 19px; left: 26px;" />
        <asp:RequiredFieldValidator ID="prv" runat="server" 
            ErrorMessage="Enter password" 
            style="position:absolute; top: 256px; left: 219px;" 
            ControlToValidate="adminpassword" Font-Bold="False" Font-Size="Medium" 
            ForeColor="Black"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="asrv" runat="server" 
            ErrorMessage="Enter smart card id" 
            style="position:absolute; top: 194px; left: 217px;" ControlToValidate="adminid" 
            Font-Bold="False" Font-Size="Medium" ForeColor="Black"></asp:RequiredFieldValidator>
        <asp:ImageButton ID="aloginb" runat="server" 
                style="position:absolute; top: 328px; left: 203px;" 
                ImageUrl="~/images/login.png" onclick="ImageButton1_Click" />
        <asp:TextBox ID="adminid" runat="server" 
                style="position:absolute; top: 157px; left: 216px;"></asp:TextBox>
        <asp:TextBox ID="adminpassword" runat="server" 
                style="position:absolute; top: 225px; left: 215px;" 
            TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" 
            style="position:absolute; top: 281px; left: 104px;" Font-Bold="True" 
            Font-Size="Large"></asp:Label>
    </asp:Panel>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
        <asp:Label ID="aslabel" runat="server" Text="smart card id" 
            style="position:absolute; top: 388px; left: 482px; height: 19px;" 
            Font-Bold="True" Font-Names="hobo std" Font-Size="Large"></asp:Label>
        <asp:Label ID="aplabel" runat="server" Text="password" 
            style="position:absolute; top: 457px; left: 499px;" Font-Bold="True" 
            Font-Names="hobo std" Font-Size="Large"></asp:Label>
    <br />
    </form>
</asp:Content>
