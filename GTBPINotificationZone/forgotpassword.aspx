<%@ Page Title="" Language="C#" MasterPageFile="~/loginpanel.Master" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="WebApplication4.forgotpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <p style="margin-left: 280px">
        <asp:Label ID="fLabel1" runat="server" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" style="position:absolute; top: 195px; left: 180px;" 
            Text="Forgot password"></asp:Label>
        <asp:Label ID="fLabel2" runat="server" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" style="position:absolute; top: 306px; left: 302px;" 
            Text="smart card id"></asp:Label>
        <asp:Button ID="fsubmit" runat="server" BackColor="#666666" 
            BorderStyle="Groove" Font-Bold="True" Font-Names="hobo std" Font-Size="Large" 
            ForeColor="White" onclick="Button1_Click" 
            style="position:absolute; top: 417px; left: 302px; width: 77px; height: 38px;" 
            Text="submit" ValidationGroup="ufg1" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:RequiredFieldValidator ID="fRequiredFieldValidator1" runat="server" 
            ControlToValidate="fsmartcard_id" ErrorMessage="enter smart card id" 
            Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" 
            style="position:absolute; top: 390px; left: 301px;"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox ID="fsmartcard_id" runat="server" BackColor="White" 
            BorderStyle="Groove" ForeColor="Black" 
            style="position:absolute; top: 356px; left: 299px; width: 200px;" 
            ValidationGroup="ufg1"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" 
            style="position:absolute; top: 477px; left: 292px; height: 27px;"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="login" 
            style="position:absolute; top: 172px; left: 19px;" BackColor="#999999" 
            BorderColor="Black" BorderStyle="Groove" Font-Bold="True" 
            onclick="Button1_Click1" ValidationGroup="ufg2" />
    </p>
    </form>
</asp:Content>
