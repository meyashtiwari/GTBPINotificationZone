<%@ Page Title="" Language="C#" MasterPageFile="~/teach.Master" AutoEventWireup="true" CodeBehind="teachhome.aspx.cs" Inherits="GTBPINotificationZone.teachhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" 
        style="position:absolute; top: 275px; left: 387px; height: 25px; width: 647px;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" 
            Text="welcome user you have following notifications today" Font-Size="X-Large"></asp:Label>
        <br />
    </asp:Panel>
</asp:Content>
