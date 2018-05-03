<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminprofile.aspx.cs" Inherits="GTBPINotificationZone.adminprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <asp:Panel ID="aproPanel1" runat="server" 
    
        
        
        
        style="position:absolute; top: 364px; left: 326px; height: 411px; width: 785px;" 
        BackColor="#FFFFCC">
        <asp:Label ID="aproLabel1" runat="server" 
    Font-Bold="True" Font-Names="Batang" Font-Size="X-Large" 
    style="position:absolute; top: 37px; left: 55px;" Text="smart card id"></asp:Label>
        <asp:Label ID="aproLabel2" runat="server" 
    Font-Bold="True" Font-Names="Batang" Font-Size="X-Large" 
    style="position:absolute; top: 170px; left: 56px;" Text="security answer 1"></asp:Label>
        <asp:Label ID="aproLabel3" runat="server" 
    Font-Bold="True" Font-Names="Batang" Font-Size="X-Large" 
    style="position:absolute; top: 83px; left: 55px;" Text="pasword"></asp:Label>
        <asp:Label ID="aproLabel4" runat="server" 
    Font-Bold="True" Font-Names="Batang" Font-Size="X-Large" 
    style="position:absolute; top: 127px; left: 56px;" Text="security question 1"></asp:Label>
        <asp:Label ID="aproans" runat="server" Text="security answer 2" 
            style="position:absolute; top: 261px; left: 56px;" Font-Bold="True" 
            Font-Names="Batang" Font-Size="X-Large"></asp:Label>
        <asp:Label ID="aprosec" runat="server" Text="security question 2" 
            style="position:absolute; top: 219px; left: 55px;" Font-Bold="True" 
            Font-Names="Batang" Font-Size="X-Large"></asp:Label>
        <asp:TextBox ID="admin_secans" runat="server" 
    BackColor="Silver" style="position:absolute; top: 176px; left: 304px;" 
    Width="240px"></asp:TextBox>
        <asp:TextBox ID="admin_secques1" runat="server" 
            style="position:absolute; top: 224px; left: 303px;" BackColor="Silver" 
            Width="240px"></asp:TextBox>
        <asp:TextBox ID="admin_secans1" runat="server" 
            style="position:absolute; top: 268px; left: 303px; height: 21px;" 
            BackColor="Silver" Width="240px"></asp:TextBox>
        <asp:TextBox ID="admin_password" runat="server" 
    BackColor="Silver" style="position:absolute; top: 84px; left: 305px;" 
    Width="240px"></asp:TextBox>
        <asp:TextBox ID="admin_secques" runat="server" 
    BackColor="Silver" style="position:absolute; top: 130px; left: 304px;" 
    Width="240px"></asp:TextBox>
        <asp:TextBox ID="adminid" runat="server" 
            style="position:absolute; top: 41px; left: 307px;" BackColor="Silver" 
            Width="240px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="enter security question" 
            style="position:absolute; top: 226px; left: 559px;" 
            ControlToValidate="admin_secques1" Font-Bold="True" 
            Font-Names="Bradley Hand ITC" Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="enter the pasword" 
            style="position:absolute; top: 85px; left: 562px;" 
            ControlToValidate="admin_password" Font-Bold="True" 
            Font-Names="Bradley Hand ITC" Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="enter answer for your question" 
            style="position:absolute; top: 265px; left: 553px; width: 267px; height: 35px;" 
            ControlToValidate="admin_secans1" Font-Bold="True" 
            Font-Names="Bradley Hand ITC" Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="enter security question" 
            style="position:absolute; top: 129px; left: 560px;" 
            ControlToValidate="admin_secques" Font-Bold="True" 
            Font-Names="Bradley Hand ITC" Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="enter answer for your question" 
            style="position:absolute; top: 176px; left: 559px; width: 232px;" 
            ControlToValidate="admin_secans" Font-Bold="True" Font-Names="Bradley Hand ITC" 
            Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:Button ID="aproupdate" runat="server" 
    BackColor="Silver" BorderStyle="Groove" Font-Bold="True" Font-Names="Batang" 
    Font-Size="X-Large" onclientclick="update1()" 
    style="position:absolute; top: 347px; left: 279px; height: 44px; width: 97px;" 
    Text="update" onclick="aproupdate_Click" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ErrorMessage="enter admin id" 
            style="position:absolute; top: 41px; left: 564px;" ControlToValidate="adminid" 
            Font-Bold="True" Font-Names="Bradley Hand ITC" Font-Size="Large" 
            ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </asp:Panel>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p style="margin-left: 1120px">
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
</asp:Content>
