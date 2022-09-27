<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="OnlineExam.PresentationLayer.StudentLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><div style="height:650px">
                <a href="Home.aspx" id="back_btn" style="display:inline-block;text-align:center;width:166px;font-size:30px; height:57px; background-color:darkviolet;color:white" >Back</a>

    <br />
    <table align="center" style="margin-left:450px"> 
        <tr>
            <td style="height: 50px">
                <asp:Label ID="lbl_login" runat="server" BackColor="#990099" ForeColor="White" style="text-align:center" Height="49px" Text="STUDENT LOGIN" Width="380px" Font-Size="X-Large"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label_studentid" runat="server" ForeColor="#990099" Text="Enter Student ID :" Font-Size="Medium"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_studentid" runat="server" Height="40px" Width="203px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_studentid" runat="server" ControlToValidate="txt_studentid" ErrorMessage="Please Enter Student id" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label_email" runat="server" ForeColor="#990099" Text="Enter Email :" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="txt_username" runat="server" TextMode="Email" Height="40px" style="margin-top: 12px" Width="203px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_email" runat="server" ControlToValidate="txt_username" ErrorMessage="Please Enter Email" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 45px">
                <asp:Label ID="lbl_pw" runat="server" ForeColor="#990099" Text="Enter Password :" Font-Size="Medium"></asp:Label>
                &nbsp; &nbsp; &nbsp;<asp:TextBox ID="txt_pw" runat="server" TextMode="Password" Height="40px" Width="203px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_pw" runat="server" ControlToValidate="txt_pw" ErrorMessage="Please Enter Password" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_submit" runat="server" BackColor="#3333CC" BorderColor="White" ForeColor="White" Text="Login" Width="198px" OnClick="btn_submit_Click" Height="54px" Font-Size="Large"/>
                <br />
                <br />
                <asp:Label ID="Result" runat="server" BackColor="#33CC33" Font-Size="Large" ForeColor="Black"></asp:Label>
                <br />
            </td>
        </tr>
       
           </table>
    </div>
</asp:Content>
