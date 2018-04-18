<%@ Page Title="" Language="C#" MasterPageFile="~/loginpanel.Master" AutoEventWireup="true" CodeBehind="forgotpassword2.aspx.cs" Inherits="WebApplication4.forgotpassword2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <p>
        <br />
        <asp:Label ID="f2Label2" runat="server" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" style="position:absolute; top: 319px; left: 130px;" 
            Text="new password"></asp:Label>
        <asp:Label ID="f2Label3" runat="server" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" style="position:absolute; top: 402px; left: 132px;" 
            Text="confirm password"></asp:Label>
        <asp:TextBox ID="cfpassword" runat="server" BorderStyle="Groove" 
            style="position:absolute; top: 441px; left: 131px; width: 220px;"></asp:TextBox>
        <asp:Button ID="f2submit" runat="server" BackColor="Silver" Font-Bold="True" 
            Font-Names="hobo std" Font-Size="X-Large" onclick="Button1_Click" 
            style="position:absolute; top: 481px; left: 353px; width: 89px;" 
            Text="Submit" />
        <asp:TextBox ID="nfpassword" runat="server" BorderStyle="Groove" 
            style="position:absolute; top: 360px; left: 131px; width: 221px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="enter password" 
            style="position:absolute; top: 363px; left: 384px;" 
            ControlToValidate="nfpassword" Font-Bold="True" Font-Italic="False" 
            Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="f2CompareValidator1" runat="server" 
            ControlToCompare="nfpassword" ControlToValidate="cfpassword" 
            ErrorMessage="password not matched" Font-Bold="True" Font-Size="Large" 
            ForeColor="Red" style="position:absolute; top: 440px; left: 384px;"></asp:CompareValidator>
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
