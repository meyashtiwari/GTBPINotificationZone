<%@ Page Title="" Language="C#" MasterPageFile="~/loginpanel.Master" AutoEventWireup="true" CodeBehind="adminforgotpassword2.aspx.cs" Inherits="GTBPINotificationZone.adminforgotpassword2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:Label ID="af2Label2" runat="server" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" style="position:absolute; top: 224px; left: 139px;" 
            Text="new password"></asp:Label>
    <asp:Label ID="af2Label3" runat="server" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" style="position:absolute; top: 335px; left: 139px;" 
            Text="confirm password"></asp:Label>
    <asp:TextBox ID="acfpassword" runat="server" BorderStyle="Groove" 
            style="position:absolute; top: 396px; left: 137px; width: 220px;"></asp:TextBox>
    <asp:Button ID="af2submit" runat="server" BackColor="Silver" Font-Bold="True" 
            Font-Names="hobo std" Font-Size="X-Large" onclick="Button1_Click" 
            onclientclick="updatep()" 
            style="position:absolute; top: 485px; left: 310px; width: 89px;" 
            Text="Submit" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="enter password" 
        style="position:absolute; top: 434px; left: 402px;" 
        ControlToValidate="acfpassword" Font-Bold="True" Font-Size="Large" 
        ForeColor="#FF3300"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="enter password" 
        style="position:absolute; top: 281px; left: 396px;" 
        ControlToValidate="anfpassword" Font-Bold="True" Font-Size="Large" 
        ForeColor="#FF3300"></asp:RequiredFieldValidator>
    <asp:TextBox ID="anfpassword" runat="server" BorderStyle="Groove" 
            style="position:absolute; top: 277px; left: 137px; width: 221px;"></asp:TextBox>
    <asp:CompareValidator ID="af2CompareValidator1" runat="server" 
            ControlToCompare="anfpassword" ControlToValidate="acfpassword" 
            ErrorMessage="password not matched" Font-Bold="True" Font-Size="Large" 
            ForeColor="Red" style="position:absolute; top: 398px; left: 399px;"></asp:CompareValidator>
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
