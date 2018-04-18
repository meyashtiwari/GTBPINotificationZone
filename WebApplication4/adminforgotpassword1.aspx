<%@ Page Title="" Language="C#" MasterPageFile="~/loginpanel.Master" AutoEventWireup="true" CodeBehind="adminforgotpassword1.aspx.cs" Inherits="WebApplication4.adminforgotpassword1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:Label ID="afLabel1" runat="server" Text="security question 1" 
        style="position:absolute; top: 205px; left: 316px;" Font-Bold="True" 
        Font-Names="hobo std" Font-Size="X-Large"></asp:Label>
    <asp:Label ID="afLabel2" runat="server" 
        style="position:absolute; top: 284px; left: 316px;" Font-Bold="True" 
        Font-Names="hobo std" Font-Size="X-Large"></asp:Label>
    <asp:Label ID="afLabel4" runat="server" Text="security question 2" 
        style="position:absolute; top: 403px; left: 313px; height: 19px;" 
        Font-Bold="True" Font-Names="hobo std" Font-Size="X-Large"></asp:Label>
    <asp:Label ID="afLabel5" runat="server" 
        style="position:absolute; top: 480px; left: 316px;" Font-Bold="True" 
        Font-Names="hobo std" Font-Size="X-Large"></asp:Label>
    <asp:Label ID="aLabel7" runat="server" 
        style="position:absolute; top: 624px; left: 309px;" Font-Bold="True" 
        Font-Names="hobo std" Font-Size="X-Large"></asp:Label>
    <asp:TextBox ID="ans1" runat="server" 
        
        style="position:absolute; top: 337px; left: 315px; height: 24px; width: 240px;" 
        BackColor="Silver" BorderStyle="Groove"></asp:TextBox>
    <asp:TextBox ID="ans2" runat="server" 
        
        style="position:absolute; top: 524px; left: 313px; height: 24px; width: 239px;" 
        BackColor="Silver" BorderStyle="Groove"></asp:TextBox>
    <asp:Button ID="submit" runat="server" Text="submit" 
        
        style="position:absolute; top: 577px; left: 384px; height: 36px; width: 116px;" 
        BackColor="Silver" BorderStyle="Groove" Font-Bold="True" Font-Names="hobo std" 
        Font-Size="X-Large" onclick="submit_Click" />
    <asp:RequiredFieldValidator ID="aRequiredFieldValidator1" runat="server" 
        ErrorMessage="enter your answer" 
        style="position:absolute; top: 341px; left: 572px;" 
        ControlToValidate="ans1" Font-Bold="True" Font-Names="hobo std" 
        Font-Size="X-Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="afRequiredFieldValidator2" runat="server" 
        ErrorMessage="enter your answer" 
        style="position:absolute; top: 524px; left: 571px;" 
        ControlToValidate="ans2" Font-Bold="True" Font-Names="hobo std" 
        Font-Size="X-Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
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
    </form>
</asp:Content>
