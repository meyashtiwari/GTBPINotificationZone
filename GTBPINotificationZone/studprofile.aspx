<%@ Page Title="" Language="C#" MasterPageFile="~/Stud.Master" AutoEventWireup="true" CodeBehind="studprofile.aspx.cs" Inherits="GTBPINotificationZone.studprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="spLabel1" runat="server" Font-Bold="True" Font-Names="BatangChe" 
            Font-Size="X-Large" style="position:absolute; top: 504px; left: 280px;" 
            Text="year"></asp:Label>
        <asp:Label ID="spLabel2" runat="server" Font-Bold="True" Font-Names="BatangChe" 
            Font-Size="X-Large" style="position:absolute; top: 353px; left: 282px;" 
            Text="name"></asp:Label>
        <asp:Label ID="spLabel3" runat="server" Font-Bold="True" Font-Names="BatangChe" 
            Font-Size="X-Large" 
            style="position:absolute; top: 666px; left: 275px; height: 19px; width: 283px;" 
            Text="security question"></asp:Label>
        <asp:Label ID="spLabel4" runat="server" Font-Bold="True" Font-Names="BatangChe" 
            Font-Size="X-Large" style="position:absolute; top: 429px; left: 280px;" 
            Text="course"></asp:Label>
        <asp:Label ID="spLabel5" runat="server" Font-Bold="True" Font-Names="BatangChe" 
            Font-Size="X-Large" style="position:absolute; top: 576px; left: 278px; height: 24px;" 
            Text="password"></asp:Label>
        <asp:Label ID="spLabel6" runat="server" Font-Bold="True" Font-Names="BatangChe" 
            Font-Size="X-Large" style="position:absolute; top: 285px; left: 283px;" 
            Text="smart card id"></asp:Label>
        <asp:Label ID="spLabel7" runat="server" Font-Bold="True" Font-Names="BatangChe" 
            Font-Size="X-Large" 
            style="position:absolute; top: 747px; left: 272px; width: 258px;" 
            Text="security answer"></asp:Label>
        <asp:TextBox ID="ussid" runat="server" BackColor="Silver" 
            style="position:absolute; top: 285px; left: 537px; height: 28px; width: 244px;" 
            ValidationGroup="g1"></asp:TextBox>
        <asp:Image ID="Image2" runat="server" 
            ImageUrl="~/images/profile.jpg" 
            
            style="position:absolute; top: 290px; left: 841px; height: 505px; width: 428px;" />
        <asp:TextBox ID="uspassword" runat="server" BackColor="Silver" 
            style="position:absolute; top: 581px; left: 537px; height: 28px; width: 243px;" 
            ValidationGroup="g1"></asp:TextBox>
        <asp:TextBox ID="usyear" runat="server" BackColor="Silver" 
            style="position:absolute; top: 506px; left: 535px; height: 28px; width: 242px;" 
            ValidationGroup="g1"></asp:TextBox>
        <asp:TextBox ID="ussec_ques1" runat="server" BackColor="Silver" 
            style="position:absolute; top: 657px; left: 534px; height: 28px; width: 244px;" 
            ValidationGroup="g1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="ussec_ques2" ErrorMessage="enter security question" 
            Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="Red" 
            style="position:absolute; top: 866px; left: 271px;"></asp:RequiredFieldValidator>
        <asp:TextBox ID="uscourse" runat="server" BackColor="Silver" Height="28px" 
            style="position:absolute; top: 426px; left: 536px; height: 26px; width: 241px;" 
            ValidationGroup="g1"></asp:TextBox>
        <asp:TextBox ID="usname" runat="server" BackColor="Silver" Height="28px" 
            style="position:absolute; top: 353px; left: 536px; width: 246px;" 
            ValidationGroup="g1"></asp:TextBox>
        <asp:TextBox ID="ussec_ans1" runat="server" BackColor="Silver" Height="28px" 
            style="position:absolute; top: 747px; left: 537px; width: 239px;" 
            ValidationGroup="g1"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="BatangChe" 
            Font-Size="X-Large" onclick="Button1_Click" 
            style="position:absolute; top: 994px; left: 494px; width: 108px; height: 38px; right: 693px;" 
            Text="update" ValidationGroup="g1" BackColor="Silver" 
            BorderStyle="Groove" />
        <asp:RequiredFieldValidator ID="spRequiredFieldValidator2" runat="server" 
            ControlToValidate="usyear" ErrorMessage="enter year" Font-Bold="True" 
            Font-Names="Lucida Handwriting" ForeColor="Red" 
            style="position:absolute; top: 546px; left: 277px;" ValidationGroup="g1"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="spRequiredFieldValidator3" runat="server" 
            ControlToValidate="ussec_ques1" ErrorMessage="enter security question" 
            Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="Red" 
            style="position:absolute; top: 707px; left: 274px;" ValidationGroup="g1"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="spRequiredFieldValidator4" runat="server" 
            ControlToValidate="uscourse" ErrorMessage="enter course" Font-Bold="True" 
            Font-Names="Lucida Handwriting" ForeColor="Red" 
            style="position:absolute; top: 471px; left: 279px;" ValidationGroup="g1"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="spRequiredFieldValidator5" runat="server" 
            ControlToValidate="usname" ErrorMessage="enter name" Font-Bold="True" 
            Font-Names="Lucida Handwriting" ForeColor="Red" 
            style="position:absolute; top: 392px; left: 282px;" ValidationGroup="g1"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="spRequiredFieldValidator6" runat="server" 
            ControlToValidate="ussec_ans1" ErrorMessage="enter security answer" 
            Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="Red" 
            style="position:absolute; top: 788px; left: 270px;" ValidationGroup="g1"></asp:RequiredFieldValidator>
        <br />
        <asp:RequiredFieldValidator ID="spRequiredFieldValidator1" runat="server" 
            ControlToValidate="ussid" ErrorMessage="enter smart card id" Font-Bold="True" 
            Font-Names="Lucida Handwriting" ForeColor="Red" ValidationGroup="g1" 
            style="position:absolute; top: 324px; left: 281px;"></asp:RequiredFieldValidator>
    </p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="enter security answer" 
        style="position:absolute; top: 949px; left: 271px;" 
        ControlToValidate="ussec_ans2" Font-Bold="True" Font-Names="Lucida Handwriting" 
        ForeColor="Red"></asp:RequiredFieldValidator>
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
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="enter password" 
            style="position:absolute; top: 626px; left: 278px;" 
            ControlToValidate="uspassword" Font-Bold="True" Font-Names="Lucida Handwriting" 
            ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
    </p>
    <p>
        &nbsp;</p>
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
        <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="BatangChe" 
            Font-Size="X-Large" Text="security question" 
            style="position:absolute; top: 826px; left: 272px;"></asp:Label>
        <asp:Label ID="Label22" runat="server" Text="security answer" Font-Bold="True" 
            Font-Names="BatangChe" Font-Size="X-Large" 
            style="position:absolute; top: 901px; left: 273px;"></asp:Label>
        <asp:TextBox ID="ussec_ques2" runat="server" BackColor="Silver" Height="28px" 
            style="position:absolute; top: 822px; left: 535px; width: 240px;"></asp:TextBox>
        <asp:TextBox ID="ussec_ans2" runat="server" BackColor="Silver" Height="28px" 
            style="position:absolute; top: 900px; left: 533px; width: 239px;"></asp:TextBox>
    </p>
    <p>
    </p>
    </asp:Content>
