<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="OnlineExam.PresentationLayer.Home" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <h3 id="lbl_greetings" style="background-color: blueviolet; color: black; font-size: 70px; text-align: center; height: 88px;">
        Welcome to Online Examination
    </h3>
    <asp:Image ID="Online_Image" runat="server" style="margin-top:0px" ImageUrl="~/images/onlinehome.jpg" Height="472px" Width="569px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_student" runat="server" BackColor="#3333CC" ForeColor="White" Height="62px" Text="Student" Width="263px" OnClick="btn_studentlogin_Click" Font-Size="X-Large" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_admin" runat="server" BackColor="#3333CC" ForeColor="White" Height="63px" Text="Admin" Width="262px" OnClick="btn_adminlogin_Click" Font-Size="X-Large" />
      <br />
    <br />
</asp:Content>