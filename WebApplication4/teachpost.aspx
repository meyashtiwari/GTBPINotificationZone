<%@ Page Title="" Language="C#" MasterPageFile="~/teach.Master" AutoEventWireup="true" CodeBehind="teachpost.aspx.cs" Inherits="WebApplication4.teachpost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Image ID="Image2" runat="server" 
            ImageUrl="~/images/Untitled design (1).jpg" 
            
            style="position:absolute; top: 297px; left: 124px; height: 477px; width: 230px;" />
    </p>
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
    <asp:Panel ID="tpoPanel1" runat="server" BackColor="#FFFFCC" 
        BorderColor="#666666" BorderStyle="Groove" 
        
        
        style="position:absolute; top: 378px; left: 500px; height: 586px; width: 754px;">
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                        runat="server" ErrorMessage="enter your course" Font-Bold="True" 
                        Font-Names="Lucida Handwriting" ForeColor="#FF3300" ValidationGroup="g6" 
                        ControlToValidate="tpcourse"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="tpoLabel1" runat="server" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" 
            style="position:absolute; top: 20px; left: 42px; height: 24px; width: 171px;" 
            Text="course"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="tpoLabel2" runat="server" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" 
            style="position:absolute; top: 95px; left: 43px; height: 20px; width: 172px;" 
            Text="year"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="tpcourse" runat="server" 
                        style="position:absolute; top: 29px; left: 237px; height: 22px;" AutoPostBack="True" 
                        BackColor="Silver" Font-Bold="True" Width="333px">
                    </asp:DropDownList>
                    <asp:TextBox ID="tpyear" runat="server" 
                        style="position:absolute; top: 98px; left: 238px; height: 23px; width: 333px;" 
                        BackColor="Silver" BorderStyle="Groove"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                        runat="server" ErrorMessage="enter year" Font-Bold="True" 
                        Font-Names="Lucida Handwriting" ForeColor="#FF3300" ValidationGroup="g6" 
                        ControlToValidate="tpyear"></asp:RequiredFieldValidator>
&nbsp;
                    <asp:Label ID="tpoLabel3" runat="server" Font-Bold="True" Font-Names="hobo std" 
                        Font-Size="X-Large" 
                        style="position:absolute; top: 155px; left: 40px; height: 20px; width: 171px;" 
                        Text="subject"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tpsub" runat="server" BackColor="Silver" BorderColor="Black" 
            BorderStyle="Groove" 
            style="position:absolute; left: 238px; width: 333px; top: 163px; height: 27px;" 
                        ValidationGroup="g6"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="tpoLabel4" runat="server" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" 
            style="position:absolute; top: 232px; left: 50px; height: 26px; width: 169px;" 
            Text="topic"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tptopic" runat="server" BackColor="Silver" BorderColor="Black" 
            BorderStyle="Groove" 
            style="position:absolute; top: 234px; left: 240px; height: 31px; width: 332px;" 
                        ValidationGroup="g6"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                        runat="server" ErrorMessage="enter your subject" Font-Bold="True" 
                        Font-Names="Lucida Handwriting" ForeColor="#FF3300" ValidationGroup="g6" 
                        ControlToValidate="tpsub"></asp:RequiredFieldValidator>
&nbsp;
                    <asp:TextBox ID="tpdetails" runat="server" BackColor="Silver" 
                        BorderColor="Black" BorderStyle="Groove" Font-Bold="True" Font-Names="hobo std" 
                        Font-Size="Large" 
                        style="position:absolute; top: 305px; left: 238px; width: 462px; height: 86px;" 
                        TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="enter your topic" Font-Bold="True" 
                        Font-Names="Lucida Handwriting" ForeColor="#FF3300" ValidationGroup="g6" 
                        ControlToValidate="tptopic"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="tpfiles" runat="server" BackColor="Silver" 
            BorderColor="Black" BorderStyle="Groove" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" 
            style="position:absolute; top: 425px; left: 235px; width: 222px; height: 32px;" />
                    <asp:Label ID="Label1" runat="server" 
                        
                        style="position:absolute; top: -47px; left: 1px; height: 29px; width: 92px;" 
                        Font-Size="X-Large" ForeColor="#FF3300"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="tpsubmit" runat="server" BackColor="Silver" 
            BorderStyle="Groove" Font-Bold="True" Font-Names="hobo std" Font-Size="X-Large" 
            style="position:absolute; top: 486px; left: 175px; height: 30px; width: 125px;" 
            Text="submit" onclick="tpsubmit_Click" ValidationGroup="g6" />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="hobo std" 
                        Font-Size="X-Large" style="position:absolute; top: 426px; left: 49px;" 
                        Text="post uploads"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="hobo std" 
                        Font-Size="X-Large" style="position:absolute; top: 331px; left: 48px;" 
                        Text="post details"></asp:Label>
    </asp:Panel>
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
        <br />
    </p>
</asp:Content>
