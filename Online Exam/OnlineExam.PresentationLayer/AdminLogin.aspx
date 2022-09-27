<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="OnlineExam.PresentationLayer.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    
    <div>
            <a href="Home.aspx" id="back_btn" style="display:inline-block;text-align:center;width:166px;font-size:30px; height:57px; background-color:darkviolet;color:white" >Back</a>
        </div>
    <table align="center" style="margin-left:480px">

        <tr>
            <td style="width: 564px;">
         
                <asp:Label ID="lbl_login" runat="server" BackColor="#990099" ForeColor="White" style="text-align:center;margin-top:80px" Height="61px" Text="ADMIN LOGIN" Width="363px" Font-Size="X-Large"></asp:Label>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 564px" >
                <asp:Label ID="Label_adminid" runat="server" ForeColor="#990099" Text="Enter Admin ID :" Font-Size="Medium"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="txt_adminid" runat="server" Height="36px" Width="197px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_adminid" runat="server" ControlToValidate="txt_adminid" ErrorMessage="Please Enter Admin id" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 564px" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;
                <asp:Label ID="Label_email" runat="server" ForeColor="#990099" Text="Enter Email :" Font-Size="Medium"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="txt_username" runat="server" TextMode="Email" Height="36px" Width="197px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_email" runat="server" ControlToValidate="txt_username" ErrorMessage="Please Enter Email" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 564px" >
                &nbsp;
                <asp:Label ID="lbl_pw" runat="server" ForeColor="#990099" Text="Enter Password :" Font-Size="Medium"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_pw" runat="server" TextMode="Password" Height="36px" Width="197px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_pw" runat="server" ControlToValidate="txt_pw" ErrorMessage="Please Enter Password" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 77px; width: 564px;" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="Button_submit" runat="server" BackColor="#3333CC" ForeColor="White" Height="57px" OnClick="Button_submit_Click" Text="Login" Width="168px" Font-Size="Large" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Result" runat="server" BackColor="#33CC33" Font-Size="Large" ForeColor="Black"></asp:Label>
                <br />
            </td>
        </tr>
         </table>
    <br />
     <br />
    <br />
</asp:Content>

