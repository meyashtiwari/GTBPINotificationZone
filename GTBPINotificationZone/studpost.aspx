<%@ Page Title="" Language="C#" MasterPageFile="~/Stud.Master" AutoEventWireup="true" CodeBehind="studpost.aspx.cs" Inherits="GTBPINotificationZone.studpost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="Image2" runat="server" Height="476px" Width="230px" 
    style="position:absolute; top: 306px; left: 94px;" 
    ImageUrl="~/images/Untitled design (1).jpg" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
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
<br />
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div style="margin-left: 560px">
        <asp:Panel ID="Panel1" runat="server" 
            style="position:absolute; top: 324px; left: 475px; height: 566px; width: 835px;" 
            BackColor="#FFFFCC" BorderColor="#666666" BorderStyle="Groove">
            <asp:Label ID="spoLabel1" runat="server" 
    Font-Bold="True" Font-Names="hobo std" Font-Size="X-Large" 
    style="position:absolute; top: 21px; left: 159px; height: 24px; width: 171px;" 
    Text="course"></asp:Label>
            <asp:DropDownList ID="spcourse" runat="server" 
                style="position:absolute; top: 25px; left: 311px; height: 22px; width: 333px;" 
                AutoPostBack="True" BackColor="Silver">
            </asp:DropDownList>
            <asp:TextBox ID="spyear" runat="server" 
                style="position:absolute; top: 100px; left: 312px; height: 25px; width: 333px;" 
                BackColor="Silver" BorderStyle="Groove"></asp:TextBox>
            <asp:Label ID="spoLabel2" runat="server" 
    Font-Bold="True" Font-Names="hobo std" Font-Size="X-Large" 
    style="position:absolute; top: 97px; left: 153px; height: 20px; width: 172px;" 
    Text="year"></asp:Label>
            <asp:Label ID="spoLabel3" runat="server" 
    Font-Bold="True" Font-Names="hobo std" Font-Size="X-Large" 
    style="position:absolute; top: 165px; left: 146px; height: 20px; width: 171px;" 
    Text="subject"></asp:Label>
            <asp:TextBox ID="spsub" runat="server" 
    BackColor="Silver" BorderColor="Black" BorderStyle="Groove" 
    style="position:absolute; left: 313px; width: 333px; top: 166px; height: 27px;" 
                ValidationGroup="g4"></asp:TextBox>
            <asp:Label ID="spoLabel4" runat="server" 
    Font-Bold="True" Font-Names="hobo std" Font-Size="X-Large" 
    style="position:absolute; top: 240px; left: 151px; height: 26px; width: 169px;" 
    Text="topic"></asp:Label>
            <asp:TextBox ID="sptopic" runat="server" 
    BackColor="Silver" BorderColor="Black" BorderStyle="Groove" 
    style="position:absolute; top: 245px; left: 312px; height: 31px; width: 332px;" 
                ValidationGroup="g4"></asp:TextBox>
            <asp:TextBox ID="spdetails" runat="server" 
    BackColor="Silver" BorderColor="Black" BorderStyle="Groove" Font-Bold="True" 
    Font-Names="hobo std" Font-Size="Large" 
    style="position:absolute; top: 323px; left: 309px; width: 462px; height: 86px;" 
    TextMode="MultiLine"></asp:TextBox>
            <asp:Button ID="spsubmit" runat="server" 
    BackColor="Silver" BorderStyle="Groove" Font-Bold="True" Font-Names="hobo std" 
    Font-Size="X-Large" 
    style="position:absolute; top: 500px; left: 238px; height: 36px; width: 116px;" 
    Text="submit" onclick="spsubmit_Click" ValidationGroup="g4" />
            <asp:FileUpload ID="spfiles" runat="server" BackColor="Silver" 
                BorderColor="Black" BorderStyle="Groove" Font-Bold="True" Font-Names="hobo std" 
                Font-Size="X-Large" 
                
                
                style="position:absolute; top: 440px; left: 308px; width: 222px; height: 32px;" />
            <asp:Label ID="Label2" runat="server" Text="post uploads" 
                style="position:absolute; top: 443px; left: 155px;" Font-Bold="True" 
                Font-Names="hobo std" Font-Size="X-Large"></asp:Label>
            <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="#FF3300" 
                
                
                style="position:absolute; top: -29px; left: 134px; height: 30px; width: 448px;"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" runat="server" ControlToValidate="spcourse" 
                ErrorMessage="enter your course" Font-Bold="True" 
                Font-Names="Lucida Handwriting" ForeColor="#FF3300" ValidationGroup="g4"></asp:RequiredFieldValidator>
            &nbsp;<br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="spyear" ErrorMessage="enter your year" Font-Bold="True" 
                Font-Names="Lucida Handwriting" ForeColor="#FF3300" ValidationGroup="g4"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="spsub" ErrorMessage="enter your subject" Font-Bold="True" 
                Font-Names="Lucida Handwriting" ForeColor="#FF3300" ValidationGroup="g4"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="sptopic" ErrorMessage="enter your topic" Font-Bold="True" 
                Font-Names="Lucida Handwriting" ForeColor="#FF3300" ValidationGroup="g4"></asp:RequiredFieldValidator>
            <asp:Label ID="Label3" runat="server" Text="post details" 
                style="position:absolute; top: 326px; left: 153px;" Font-Bold="True" 
                Font-Names="hobo std" Font-Size="X-Large"></asp:Label>
        </asp:Panel>
    </div>
</asp:Content>
