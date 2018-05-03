<%@ Page Title="" Language="C#" MasterPageFile="~/loginpanel.Master" AutoEventWireup="true" CodeBehind="registerteach.aspx.cs" Inherits="GTBPINotificationZone.registerteach" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:Image ID="Image2" runat="server" Height="660px" 
        ImageUrl="~/images/Untitled design.jpg" style="margin-bottom: 0px" 
        Width="358px" />
    <asp:Panel ID="rsPanel1" runat="server" BackColor="#FFCC99" 
        style="position: absolute; top: 193px; left: 455px; height: 617px;" 
        Width="785px">
        <table class="style1" style="height: 514px; width: 99%">
            <tr>
                <td class="style10">
                </td>
                <td class="style11" colspan="2">
                    <asp:Label ID="tLabel19" runat="server" Font-Bold="True" 
                        Font-Names="Levenim MT" ForeColor="#FF3300" 
                        Text="field mark as * are mandatory"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="rtLabel1" runat="server" Font-Names="Batang" Font-Size="X-Large" 
                        ForeColor="#663300" Text="smart card id"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label19" runat="server" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
                </td>
                <td class="style13">
                </td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style9" colspan="2">
                    <asp:TextBox ID="tid" runat="server" Width="663px"></asp:TextBox>
                    <asp:Label ID="Label10" runat="server" Text="*"></asp:Label>
                                <br />
                                <asp:RequiredFieldValidator ID="rtRequiredFieldValidator1" 
                        runat="server" ControlToValidate="tid" ErrorMessage="enter smart card id" 
                        Font-Names="Lucida Handwriting" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style18">
                    <asp:Label ID="rtLabel2" runat="server" Font-Names="Batang" Font-Size="X-Large" 
                        ForeColor="#663300" Text="name"></asp:Label>
                </td>
                <td class="style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style9" colspan="2">
                    <asp:TextBox ID="tname" runat="server" Width="663px"></asp:TextBox>
                   
                    <asp:Label ID="Label11" runat="server" Text="*"></asp:Label>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                        runat="server" ControlToValidate="tname" ErrorMessage="enter your name" 
                        Font-Names="Lucida Handwriting" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style18" colspan="2" rowspan="2">
                    <asp:Label ID="rtLabel3" runat="server" Font-Names="Batang" Font-Size="X-Large" 
                        ForeColor="#663300" Text="department"></asp:Label>
                                <br />
                                <asp:TextBox ID="tdept" runat="server" Width="661px"></asp:TextBox>
                   
                    &nbsp;<asp:Label ID="Label18" runat="server" Text="*"></asp:Label>
                                <br />
                                <asp:RequiredFieldValidator ID="rtRequiredFieldValidator3" 
                        runat="server" ControlToValidate="tdept" ErrorMessage="enter your department" 
                        Font-Names="Lucida Handwriting" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                <br />
                                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style18">
                    <asp:Label ID="rtLabel4" runat="server" Font-Names="Batang" Font-Size="X-Large" 
                        ForeColor="#663300" Text="password"></asp:Label>
                </td>
                <td class="style8">
                    &nbsp;<asp:Label ID="rtLabel6" runat="server" Font-Names="Batang" 
                        Font-Size="X-Large" ForeColor="#663300" Text="confirm password"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style18">
                
                    <asp:TextBox ID="tpassword" runat="server" Height="22px" Width="280px" 
                        ontextchanged="tpassword_TextChanged"></asp:TextBox>
                    
                    &nbsp;
                    <asp:Label ID="Label13" runat="server" Text="*"></asp:Label>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                        runat="server" ControlToValidate="tpassword" ErrorMessage="enter password" 
                        Font-Bold="False" Font-Names="Lucida Handwriting" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="style8">
                    <asp:TextBox ID="tconfirmpassword" runat="server" Height="22px" Width="280px"></asp:TextBox>
                    
                   
                    <asp:Label ID="Label16" runat="server" Text="*"></asp:Label>
                                <br />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="tpassword" ControlToValidate="tconfirmpassword" 
                        ErrorMessage="password not matched" Font-Names="Lucida Handwriting" 
                        ForeColor="#FF3300"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="tconfirmpassword" ErrorMessage="enter password" 
                        Font-Names="Lucida Handwriting" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style18">
                    <asp:Label ID="rtLabel9" runat="server" Font-Names="Batang" Font-Size="X-Large" 
                        ForeColor="#663300" Text="Security question1"></asp:Label>
                </td>
                <td class="style8">
                    <asp:Label ID="rtLabel7" runat="server" Font-Names="Batang" Font-Size="X-Large" 
                        ForeColor="#663300" Text="Security answer1"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style19" rowspan="3">
                </td>
                <td class="style28">
                    <asp:DropDownList ID="tsecurity_ques1" runat="server" Height="23px" 
                        Width="276px">
                    </asp:DropDownList>
                   
                    <asp:Label ID="Label14" runat="server" Text="*"></asp:Label>
                                <br />
                                <asp:RequiredFieldValidator ID="rtRequiredFieldValidator7" 
                        runat="server" ControlToValidate="tsecurity_ques1" 
                        ErrorMessage="select any question" Font-Names="Lucida Handwriting" 
                        ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="style29">
                    &nbsp;<asp:TextBox ID="tsecurity_answer" runat="server" Height="22px" Width="280px"></asp:TextBox>
                  
                    <asp:Label ID="Label17" runat="server" Text="*"></asp:Label>
                                <br />
                                <asp:RequiredFieldValidator ID="rtRequiredFieldValidator8" 
                        runat="server" ControlToValidate="tsecurity_answer" 
                        ErrorMessage="enter your answer" Font-Names="Lucida Handwriting" 
                        ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="style22" rowspan="3">
                </td>
            </tr>
            <tr>
                <td class="style30">
                    <asp:Label ID="rtLabel10" runat="server" Font-Names="Batang" 
                        Font-Size="X-Large" ForeColor="#663300" Text="Security question2"></asp:Label>
                </td>
                <td class="style31">
                    <asp:Label ID="rtLabel11" runat="server" Font-Names="Batang" 
                        Font-Size="X-Large" ForeColor="#663300" Text="Security answer2"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    <asp:DropDownList ID="tsecurity_ques2" runat="server" Height="22px" 
                        Width="270px">
                    </asp:DropDownList>
                    <asp:Label ID="Label20" runat="server" Text="*"></asp:Label>
                    
                   
                                <br />
                                <asp:RequiredFieldValidator ID="rtRequiredFieldValidator9" 
                        runat="server" ControlToValidate="tsecurity_ques2" 
                        ErrorMessage="select any question" Font-Names="Lucida Handwriting" 
                        ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="style21">
                    <asp:TextBox ID="tsecurity_answer0" runat="server" Height="22px" Width="280px"></asp:TextBox>
                   
                                <asp:Label ID="Label21" runat="server" Text="*"></asp:Label>
                   
                                <br />
                                <asp:RequiredFieldValidator ID="rtRequiredFieldValidator10" 
                        runat="server" ControlToValidate="tsecurity_answer0" 
                        ErrorMessage="enter your answer" Font-Names="Lucida Handwriting" 
                        ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style18">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="submit" 
                        runat="server" BackColor="#663300" Font-Bold="True" Font-Names="hobo std" 
                        Font-Size="X-Large" ForeColor="White" onclick="submit_Click" Text="submit" />
                    &nbsp;&nbsp; &nbsp;</td>
                <td class="style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="reset" runat="server" BackColor="#663300" Font-Bold="True" 
                        Font-Names="hobo std" Font-Size="X-Large" ForeColor="White" 
                        onclick="reset_Click" Text="reset" />
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
            BorderColor="Black" BorderStyle="Groove" onclick="Button1_Click" 
        ValidationGroup="lg1"/>
    </form>
</asp:Content>
