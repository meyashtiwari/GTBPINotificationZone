<%@ Page Title="" Language="C#" MasterPageFile="~/loginpanel.Master" AutoEventWireup="true" CodeBehind="registerstud.aspx.cs" Inherits="GTBPINotificationZone.registerstud" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:Image ID="Image2" runat="server" Height="660px" 
        ImageUrl="~/images/Untitled design.jpg" Width="358px" />
    <asp:Panel ID="rsPanel1" runat="server" BackColor="#FFCC99" 
        style="position: absolute; top: 194px; left: 462px; height: 630px;" 
        Width="785px">
        <table class="style1" style="height: 514px; width: 99%">
            <tr>
                <td class="style10">
                </td>
                <td class="style11" colspan="2">
                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Levenim MT" 
                        ForeColor="#FF3300" Text="field mark as * are mandatory"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="rsLabel1" runat="server" Font-Names="Batang" Font-Size="X-Large" 
                        ForeColor="#663300" Text="Smart card id"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label20" runat="server" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
                </td>
                <td class="style13">
                </td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style9" colspan="2">
                    <asp:TextBox ID="sid" runat="server" Width="663px"></asp:TextBox>
                    
                    <asp:Label ID="Label10" runat="server" Text="*"></asp:Label>
                    <br />
                    <asp:RequiredFieldValidator ID="rsRequiredFieldValidator1" runat="server" 
                        ControlToValidate="sid" ErrorMessage="enter smart card id" 
                        Font-Names="Lucida Handwriting" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style18">
                    <asp:Label ID="rsLabel2" runat="server" Font-Names="Batang" Font-Size="X-Large" 
                        ForeColor="#663300" Text="Name"></asp:Label>
                </td>
                <td class="style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    </td>
                <td class="style1" colspan="2">
                    <asp:TextBox ID="sname" runat="server" Width="663px"></asp:TextBox>
                   
                    <asp:Label ID="Label11" runat="server" Text="*"></asp:Label>
                    <br />
                    <asp:RequiredFieldValidator ID="rsRequiredFieldValidator2" runat="server" 
                        ControlToValidate="sname" ErrorMessage="enter your name" 
                        Font-Names="Lucida Handwriting" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="style1">
                    </td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style18">
                    <asp:Label ID="rsLabel3" runat="server" Font-Names="Batang" Font-Size="X-Large" 
                        ForeColor="#663300" Text="Course"></asp:Label>
                </td>
                <td class="style8">
                    <asp:Label ID="rsLabel8" runat="server" Font-Names="Batang" Font-Size="X-Large" 
                        ForeColor="#663300" Text="Year"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style18">
                   
                   
                    &nbsp;<asp:DropDownList ID="scourse" runat="server" Height="22px" Width="280px" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:Label ID="Label18" runat="server" Text="*"></asp:Label>
                    <br />
                    <asp:RequiredFieldValidator ID="rsRequiredFieldValidator3" runat="server" 
                        ControlToValidate="scourse" ErrorMessage="enter your course" 
                        Font-Names="Lucida Handwriting" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="style8">
                    <asp:TextBox ID="syear" runat="server" Width="280px"></asp:TextBox>
                    <asp:Label ID="Label21" runat="server" Text="*"></asp:Label>
                   
                    
                   
                    <br />
                    &nbsp;<asp:RequiredFieldValidator ID="rsRequiredFieldValidator4" runat="server" 
                        ControlToValidate="syear" ErrorMessage="enter your year" 
                        Font-Names="Lucida Handwriting" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style18">
                    <asp:Label ID="rsLabel4" runat="server" Font-Names="Batang" Font-Size="X-Large" 
                        ForeColor="#663300" Text="Password"></asp:Label>
                </td>
                <td class="style8">
                    &nbsp;<asp:Label ID="rsLabel6" runat="server" Font-Names="Batang" 
                        Font-Size="X-Large" ForeColor="#663300" Text="Confirm password"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style18">
                    
                       
                    <asp:TextBox ID="spassword" runat="server" Height="20px" Width="280px"></asp:TextBox>
                    
                   
                     
                    &nbsp;
                    <asp:Label ID="Label13" runat="server" Text="*"></asp:Label>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="spassword" ErrorMessage="enter password" Font-Bold="False" 
                        Font-Names="Lucida Handwriting" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;
                </td>
                <td class="style8">
                    <asp:TextBox ID="sconfirmpassword" runat="server" Height="20px" Width="280px"></asp:TextBox>
                        
                        
                    <asp:Label ID="Label16" runat="server" Text="*"></asp:Label>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="spassword" ControlToValidate="sconfirmpassword" 
                        ErrorMessage="password not matched" Font-Names="Lucida Handwriting" 
                        ForeColor="#FF3300"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="sconfirmpassword" ErrorMessage="enter password" 
                        Font-Names="Lucida Handwriting" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style18">
                    <asp:Label ID="rsLabel9" runat="server" Font-Names="Batang" Font-Size="X-Large" 
                        ForeColor="#663300" Text="Security question1"></asp:Label>
                </td>
                <td class="style8">
                    <asp:Label ID="rsLabel7" runat="server" Font-Names="Batang" Font-Size="X-Large" 
                        ForeColor="#663300" Text="Security answer1"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style19" rowspan="3">
                </td>
                <td class="style28">
                    <asp:DropDownList ID="ssecurity_ques1" runat="server" AutoPostBack="True" 
                        Height="22px" Width="277px">
                    </asp:DropDownList>
                    
                    <asp:Label ID="Label14" runat="server" Text="*"></asp:Label>
                    <br />
                    <asp:RequiredFieldValidator ID="rsRequiredFieldValidator7" runat="server" 
                        ControlToValidate="ssecurity_ques1" ErrorMessage="select any question" 
                        Font-Names="Lucida Handwriting" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="style29">
                    &nbsp;<asp:TextBox ID="ssecurity_answer" runat="server" Height="20px" 
                        Width="280px"></asp:TextBox>
                    
                    <asp:Label ID="Label17" runat="server" Text="*"></asp:Label>
                    <br />
                    <asp:RequiredFieldValidator ID="rsRequiredFieldValidator8" runat="server" 
                        ControlToValidate="ssecurity_answer" ErrorMessage="enter your answer" 
                        Font-Names="Lucida Handwriting" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="style22" rowspan="3">
                </td>
            </tr>
            <tr>
                <td class="style30">
                    <asp:Label ID="rsLabel10" runat="server" Font-Names="Batang" 
                        Font-Size="X-Large" ForeColor="#663300" Text="Security question2"></asp:Label>
                </td>
                <td class="style31">
                    <asp:Label ID="rsLabel11" runat="server" Font-Names="Batang" 
                        Font-Size="X-Large" ForeColor="#663300" Text="Security answer2" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    <asp:DropDownList ID="ssecurity_ques2" runat="server" AutoPostBack="True" 
                        Height="21px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                        Width="272px">
                    </asp:DropDownList>
                    <asp:Label ID="Label22" runat="server" Text="*"></asp:Label>

                    <br />
                    <asp:RequiredFieldValidator ID="rsRequiredFieldValidator9" runat="server" 
                        ControlToValidate="ssecurity_ques2" ErrorMessage="select any question" 
                        Font-Names="Lucida Handwriting" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="style21">
                    <asp:TextBox ID="ssecurity_answer0" runat="server" Height="20px" Width="280px"></asp:TextBox>
                    
                    <br />
                    <asp:RequiredFieldValidator ID="rsRequiredFieldValidator10" runat="server" 
                        ControlToValidate="ssecurity_answer0" ErrorMessage="enter your answer" 
                        Font-Names="Lucida Handwriting" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style18">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="rsubmit" 
                        runat="server" BackColor="#663300" BorderColor="#663300" Font-Bold="True" 
                        Font-Names="hobo std" Font-Size="X-Large" ForeColor="White" 
                        onclick="Button1_Click" Text="submit" Width="104px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:Button ID="rreset" runat="server" BackColor="#663300" Font-Bold="True" 
                        Font-Names="hobo std" Font-Size="X-Large" ForeColor="White" 
                        onclick="Button2_Click" Text="reset" />
                    
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style23">
                </td>
                <td class="style24">
                    &nbsp;</td>
                <td class="style25">
                </td>
                <td class="style26">
                </td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Button ID="Button1" runat="server" Text="login" 
            style="position:absolute; top: 172px; left: 16px;" BackColor="#999999" 
            BorderColor="Black" BorderStyle="Groove" onclick="Login_Click" 
        ValidationGroup="lg1"/>
    <br />
    </form>
    </asp:Content>
