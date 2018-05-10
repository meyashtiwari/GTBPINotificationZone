<%@ Page Title="" Language="C#" MasterPageFile="~/loginpanel.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="GTBPINotificationZone.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #form1 {
            width: 1163px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <form id="form1" runat="server">
    <div style="margin-left: 290px">
        <asp:ImageButton ID="Teacher" runat="server" Height="223px" 
            ImageUrl="~/images/teacher.jpg" Width="349px" 
            onclick="ImageButton2_Click" style="margin-left: 0px; margin-top: 18px;" />
        <asp:ImageButton ID="Student" runat="server" Height="223px" 
            ImageUrl="~/images/student.jpg" Width="349px" 
            onclick="ImageButton1_Click" style="margin-left: 26px" />
    </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="223px" ImageUrl="~/images/loginb.jpg" style="margin-left: 0px; margin-top: 18px;" Width="349px" OnClick="ImageButton1_Click1" />
        &nbsp;
        </form>
    </asp:Content>

