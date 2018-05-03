<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminupdate.aspx.cs" Inherits="GTBPINotificationZone.adminupdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <asp:Panel ID="Panel1" runat="server" 
    style="position:absolute; top: 367px; left: 265px; width: 697px; height: 216px;" 
    BackColor="#FFFFCC">
        <asp:TextBox ID="ac_del" runat="server" Height="24px" 
    style="position:absolute; top: 117px; left: 24px; width: 324px;" 
            BackColor="Silver" BorderColor="Black" BorderStyle="Groove"></asp:TextBox>
        <asp:Label ID="auLabel3" runat="server" Font-Bold="True" 
    Font-Names="hobo std" Font-Size="X-Large" 
    style="position:absolute; top: 23px; left: 22px;" Text="Delete Account"></asp:Label>
        <asp:Label ID="adlabel1" runat="server" Text="enter account smart card id" 
            style="position:absolute; top: 79px; left: 24px;" Font-Bold="True" 
            Font-Names="hobo std" Font-Size="Large"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="enter smart card id to be deleted" 
            style="position:absolute; top: 119px; left: 368px;" ControlToValidate="ac_del" 
            Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Names="hobo std" Font-Size="Large" 
            ForeColor="#FF3300"></asp:Label>
        <br />
    </asp:Panel>
    <p>
    </p>
    <p>
    </p>
<p>
    </p>
<p>
    </p>
<p>
    </p>
<p>
    </p>
<p>
    </p>
<p>
    <asp:Button ID="del10" runat="server" BackColor="Silver" BorderColor="Black" 
        BorderStyle="Groove" Font-Bold="True" Font-Names="hobo std" Font-Size="Large" 
        ForeColor="Black" onclick="del10_Click" 
        style="position: absolute; top: 533px; left: 430px; height: 27px; width: 92px;" 
        Text="Delete" />
    </p>
<p>
    </p>
<p>
    </p>
<p>
    </p>
</asp:Content>
