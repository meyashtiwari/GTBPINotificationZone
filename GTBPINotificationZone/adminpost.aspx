<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminpost.aspx.cs" Inherits="WebApplication4.adminpost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" BorderColor="#666666" 
        BorderStyle="Groove" 
    
        
        
    
        style="position:absolute; top: 311px; left: 165px; height: 507px; width: 789px;">
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="enter topic of post" 
            style="position:absolute; top: 187px; left: 585px; width: 208px;" 
            ControlToValidate="aptopic" Font-Bold="True" Font-Names="Bell MT" 
            Font-Size="X-Large" ForeColor="#FF6600" ValidationGroup="g1"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="enter year" 
            style="position:absolute; top: 89px; left: 585px; width: 158px;" 
            ControlToValidate="apyear" Font-Bold="True" Font-Names="Bell MT" 
            Font-Size="X-Large" ForeColor="#FF6600" ValidationGroup="g1"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="enter course" 
            style="position:absolute; top: 43px; left: 587px; width: 143px;" 
            ControlToValidate="apcourse" Font-Bold="True" Font-Names="Bell MT" 
            Font-Size="X-Large" ForeColor="#FF6600" ValidationGroup="g1"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="enter subject " 
            style="position:absolute; top: 137px; left: 588px; width: 149px;" 
            ControlToValidate="apsub" Font-Bold="True" Font-Names="Bell MT" 
            Font-Size="X-Large" ForeColor="#FF6600" ValidationGroup="g1"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="apLabel1" runat="server" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" 
            style="position:absolute; top: 36px; left: 58px; height: 24px; width: 171px;" 
            Text="course"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="apcourse" runat="server" 
            style="position:absolute; top: 42px; left: 243px;" BackColor="Silver" 
            Height="27px" Width="333px">
        </asp:DropDownList>
        <asp:TextBox ID="apyear" runat="server" 
            style="position:absolute; top: 87px; left: 242px; height: 22px; width: 327px;" 
            BackColor="Silver" BorderStyle="Groove"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="apLabel2" runat="server" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" 
            style="position:absolute; top: 82px; left: 58px; height: 20px; width: 172px;" 
            Text="year"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="apLabel3" runat="server" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" 
            style="position:absolute; top: 131px; left: 58px; height: 20px; width: 171px;" 
            Text="subject"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="apsub" runat="server" BackColor="Silver" BorderColor="Black" 
            BorderStyle="Groove" 
            
            
            
            style="position:absolute; left: 241px; width: 333px; top: 134px; height: 27px;" 
            ValidationGroup="g1"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="apLabel4" runat="server" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" 
            style="position:absolute; top: 182px; left: 57px; height: 32px; width: 169px;" 
            Text="topic"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="aptopic" runat="server" BackColor="Silver" BorderColor="Black" 
            BorderStyle="Groove" 
            
            
            
            style="position:absolute; top: 180px; left: 240px; height: 31px; width: 332px;" 
            ValidationGroup="g1" ontextchanged="aptopic_TextChanged"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="apdetails" runat="server" BackColor="Silver" 
            BorderColor="Black" BorderStyle="Groove" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="Large" 
            style="position:absolute; top: 230px; left: 241px; width: 462px; height: 86px;" 
            TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="apfiles" runat="server" BackColor="Silver" 
            BorderColor="Black" BorderStyle="Groove" Font-Bold="True" Font-Names="hobo std" 
            Font-Size="X-Large" 
            
            
            style="position:absolute; top: 333px; left: 242px; width: 222px; height: 32px;" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="apsubmit" runat="server" BackColor="Silver" 
            BorderStyle="Groove" Font-Bold="True" Font-Names="hobo std" Font-Size="X-Large" 
            onclick="apsubmit_Click" 
            style="position:absolute; top: 407px; left: 181px; height: 37px; width: 116px;" 
            Text="submit" ValidationGroup="g1" />
        <asp:Label ID="apLabel5" runat="server" Text="post details" 
            style="position:absolute; top: 226px; left: 57px;" Font-Bold="True" 
            Font-Names="hobo std" Font-Size="X-Large"></asp:Label>
        <asp:Label ID="apLabel6" runat="server" Text="post upload" 
            style="position:absolute; top: 331px; left: 56px;" Font-Bold="True" 
            Font-Names="hobo std" Font-Size="X-Large"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="aLabel1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            style="position:absolute; top: 5px; left: 58px;" ForeColor="#FF6600"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
</asp:Content>
