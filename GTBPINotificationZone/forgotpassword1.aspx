<%@ Page Title="" Language="C#" MasterPageFile="~/loginpanel.Master" AutoEventWireup="true" CodeBehind="forgotpassword1.aspx.cs" Inherits="WebApplication4.forgotpassword1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <p>
        <asp:Label ID="f1Label1" runat="server" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" 
            
            style="position:absolute; top: 297px; left: 258px; height: 28px; width: 210px;"></asp:Label>
        <asp:Label ID="f1Label2" runat="server" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" style="position:absolute; top: 379px; left: 259px;"></asp:Label>
        <asp:TextBox ID="ans2" runat="server" BorderStyle="Groove" 
            
            style="position:absolute; top: 423px; left: 260px; height: 23px; width: 220px;"></asp:TextBox>
        <asp:TextBox ID="ans1" runat="server" BorderStyle="Groove" 
            style="position:absolute; top: 337px; left: 258px; height: 23px; width: 220px;"></asp:TextBox>
        <asp:Button ID="f1submit" runat="server" BackColor="Silver" Font-Bold="True" 
            Font-Names="hobo std" Font-Size="X-Large" onclick="Button1_Click" 
            style="position: absolute; top: 477px; left: 446px; height: 34px; width: 102px;" 
            Text="submit" />
        <asp:RequiredFieldValidator ID="f1RequiredFieldValidator1" runat="server" 
            ControlToValidate="ans2" ErrorMessage="enter your answer" Font-Bold="True" 
            Font-Size="Large" ForeColor="Red" 
            style="position:absolute; top: 423px; left: 502px;"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="f1RequiredFieldValidator2" runat="server" 
            ControlToValidate="ans1" ErrorMessage="enter your answer" Font-Bold="True" 
            Font-Size="Large" ForeColor="Red" 
            style="position:absolute; top: 338px; left: 499px;"></asp:RequiredFieldValidator>
        <br />
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
        <asp:Label ID="Label1" runat="server" 
            style="position:absolute; top: 540px; left: 267px;" Font-Names="hobo std" 
            Font-Size="X-Large"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    </form>
</asp:Content>
