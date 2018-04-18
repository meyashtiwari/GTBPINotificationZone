<%@ Page Title="" Language="C#" MasterPageFile="~/teach.Master" AutoEventWireup="true" CodeBehind="teachprofile.aspx.cs" Inherits="WebApplication4.teachprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:Label ID="tpLabel1" runat="server" Font-Bold="True" Font-Names="Batang" 
            Font-Size="X-Large" style="position:absolute; top: 472px; left: 334px;" 
            Text="password"></asp:Label>
        <asp:Label ID="tpLabel2" runat="server" Font-Bold="True" Font-Names="Batang" 
            Font-Size="X-Large" style="position:absolute; top: 611px; left: 328px;" 
            Text="security answer"></asp:Label>
        <asp:Label ID="tpLabel3" runat="server" Font-Bold="True" Font-Names="Batang" 
            Font-Size="X-Large" style="position:absolute; top: 411px; left: 334px;" 
            Text="department"></asp:Label>
        <asp:Label ID="tpLabel6" runat="server" Font-Bold="True" Font-Names="Batang" 
            Font-Size="X-Large" style="position:absolute; top: 287px; left: 334px;" 
            Text="smart card id"></asp:Label>
        <asp:Label ID="tpLabel4" runat="server" Font-Bold="True" Font-Names="Batang" 
            Font-Size="X-Large" style="position:absolute; top: 354px; left: 334px; height: 22px;" 
            Text="name"></asp:Label>
        <asp:Label ID="tpLabel5" runat="server" Font-Bold="True" Font-Names="Batang" 
            Font-Size="X-Large" style="position:absolute; top: 539px; left: 325px;" 
            Text="security question"></asp:Label>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/profile.jpg" 
            style="position:absolute; top: 276px; left: 840px; height: 452px; width: 433px;" />
        <asp:RequiredFieldValidator ID="tpRequiredFieldValidator1" runat="server" 
            ControlToValidate="utid" ErrorMessage="enter your smart card id" 
            Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="#FF3300" 
            style="position:absolute; top: 321px; left: 336px;"></asp:RequiredFieldValidator>
        <asp:TextBox ID="utpassword" runat="server" BackColor="Silver" 
            
            
            style="position:absolute; top: 476px; left: 543px; width: 244px; height: 28px;"></asp:TextBox>
        <asp:TextBox ID="utid" runat="server" BackColor="Silver" 
            style="position:absolute; top: 285px; left: 536px; width: 244px; height: 28px;"></asp:TextBox>
        <asp:TextBox ID="utname" runat="server" BackColor="Silver" 
            
            style="position:absolute; top: 357px; left: 541px; height: 28px; width: 244px;"></asp:TextBox>
        <asp:TextBox ID="utdpt" runat="server" BackColor="Silver" 
            
            style="position:absolute; top: 412px; left: 541px; width: 244px; height: 28px;"></asp:TextBox>
        <asp:TextBox ID="utsec_ques1" runat="server" BackColor="Silver" 
            
            
            
            style="position:absolute; top: 535px; left: 542px; width: 244px; height: 28px;"></asp:TextBox>
        <asp:TextBox ID="utsec_ans1" runat="server" BackColor="Silver" 
            
            
            
            style="position:absolute; top: 609px; left: 543px; width: 244px; height: 28px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="tpRequiredFieldValidator2" runat="server" 
            ControlToValidate="utname" ErrorMessage="enter your name" Font-Bold="True" 
            Font-Names="Lucida Handwriting" ForeColor="#FF3300" 
            style="position:absolute; top: 387px; left: 336px;"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="tpRequiredFieldValidator3" runat="server" 
            ControlToValidate="utdpt" ErrorMessage="enter department" Font-Bold="True" 
            Font-Names="Lucida Handwriting" ForeColor="#FF3300" 
            style="position:absolute; top: 444px; left: 340px;"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="tpRequiredFieldValidator4" runat="server" 
            ControlToValidate="utsec_ques1" ErrorMessage="enter security question" 
            Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="#FF3300" 
            style="position:absolute; top: 577px; left: 318px;"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="utsec_ans1" ErrorMessage="enter security answer" 
            Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="#FF3300" 
            style="position:absolute; top: 650px; left: 319px;"></asp:RequiredFieldValidator>
        <asp:Button ID="tupdate" runat="server" Font-Bold="True" Font-Names="Batang" 
            Font-Size="X-Large" onclick="tupdate_Click" 
            style="position:absolute; width: 91px; height: 41px; left: 581px; top: 848px;" 
            Text="update" BackColor="Silver" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="enter security question" 
            style="position:absolute; top: 724px; left: 313px;" 
            ControlToValidate="utsec_ques2" Font-Bold="True" 
            Font-Names="Lucida Handwriting" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ErrorMessage="enter security answer" 
            style="position:absolute; top: 804px; left: 318px;" 
            ControlToValidate="utsec_ans2" Font-Bold="True" Font-Names="Lucida Handwriting" 
            ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:Label ID="Label1" runat="server" Text="security question" 
            style="position:absolute; top: 685px; left: 321px;" Font-Bold="True" 
            Font-Names="Batang" Font-Size="X-Large"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="security answer" 
            style="position:absolute; top: 762px; left: 328px;" Font-Bold="True" 
            Font-Names="Batang" Font-Size="X-Large"></asp:Label>
        <asp:TextBox ID="utsec_ques2" runat="server" 
            style="position:absolute; top: 682px; left: 546px; width: 236px;" 
            BackColor="Silver" Height="28px"></asp:TextBox>
        <asp:TextBox ID="utsec_ans2" runat="server" 
            style="position:absolute; top: 761px; left: 544px; width: 230px;" 
            BackColor="Silver" Height="28px"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ErrorMessage="enter password" 
            style="position:absolute; top: 504px; left: 333px;" 
            ControlToValidate="utpassword" Font-Bold="True" Font-Names="Lucida Handwriting" 
            ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p style="margin-left: 360px">
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
</asp:Content>
