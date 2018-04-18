<%@ Page Title="" Language="C#" MasterPageFile="~/loginpanel.Master" AutoEventWireup="true" CodeBehind="adminforgotpassword.aspx.cs" Inherits="WebApplication4.adminforgotpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <p>
        <asp:Button ID="Button1" runat="server" Text="login" 
            style="position:absolute; top: 172px; left: 19px;" BackColor="#999999" 
            BorderColor="Black" BorderStyle="Groove" Font-Bold="True" 
            onclick="Button1_Click1" ValidationGroup="fg2" />
        <br />
    </p>
    <p>
        <asp:Label ID="afLabel1" runat="server" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" style="position:absolute; top: 195px; left: 180px;" 
            Text="Forgot password"></asp:Label>
        <asp:Label ID="afLabel2" runat="server" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" style="position:absolute; top: 272px; left: 303px;" 
            Text="smart card id"></asp:Label>
        <asp:Button ID="afsubmit" runat="server" BackColor="Silver" 
            BorderStyle="Solid" Font-Bold="True" Font-Names="hobo std" Font-Size="Large" 
            ForeColor="Black" onclick="Button1_Click" 
            style="position:absolute; top: 417px; left: 309px; width: 77px; height: 38px;" 
            Text="submit" BorderColor="Black" ValidationGroup="fg1" />
        <asp:RequiredFieldValidator ID="afRequiredFieldValidator1" runat="server" 
            ControlToValidate="admin_id" ErrorMessage="enter smart card id" 
            Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" 
            style="position:absolute; top: 375px; left: 304px;"></asp:RequiredFieldValidator>
        <asp:TextBox ID="admin_id" runat="server" BackColor="White" 
            BorderStyle="Groove" ForeColor="Black" 
            style="position:absolute; top: 329px; left: 303px; width: 200px;" 
            ValidationGroup="fg1"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" 
            style="position:absolute; top: 481px; left: 311px;" Font-Bold="True" 
            Font-Italic="True" Font-Size="X-Large"></asp:Label>
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
    </form>
</asp:Content>
