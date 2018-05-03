<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="GTBPINotificationZone.adminhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Font-Names="Calibri" 
        style="position:absolute; top: 288px; left: 327px; height: 28px; width: 715px;">
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" 
            Text="welcome user you have following notifications today" Font-Size="X-Large"></asp:Label>
         <br />
    </asp:Panel>
</asp:Content>
