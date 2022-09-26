<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="OnlineExam.PresentationLayer.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height:650px">
                <asp:Button ID="Button_logout" runat="server" BackColor="Red" CssClass="active right" ForeColor="White" Text="LOGOUT" OnClick="Button_logout_Click" style="margin-left: 855px; margin-top: 0px" Width="206px" Font-Size="X-Large" Height="72px" />
     
    <table align="right" class="navbar navbar-fixed-top" style="width: 30%; height: 27px">
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
     
    <table align="left" style="width: 21%; height: 334px; background-color:blue">
        <tr>
            <td style="height: 73px; text-align:center;width: 127px;color:white">
                <br />
                <br />
                <asp:HyperLink ID="HyperLink_Admin" runat="server" Font-Size="Large" ForeColor="White" NavigateUrl="~/AdminContent.aspx">Admin</asp:HyperLink>
                <br />----------------------------------------------------------
            </td>
        </tr>
        <tr>
            <td style="height: 72px; width: 127px;text-align:center;color:white">
                <asp:HyperLink ID="HyperLink_Student" runat="server" Font-Size="Large" ForeColor="White" NavigateUrl="~/StudentContent.aspx">Student</asp:HyperLink>
                <br />
                ----------------------------------------------------------</td>
        </tr>        <tr>
            <td style="height: 73px; width: 127px;text-align:center;color:white">
                <asp:HyperLink ID="HyperLink_Exam" runat="server" Font-Size="Large" ForeColor="White" NavigateUrl="~/ExamDashboard.aspx">Exam</asp:HyperLink>
                <br />
                -----------------------------------------------------------</td>
        </tr>
        <tr>
            <td style="height: 73px; width: 127px;text-align:center;color:white">
                <asp:HyperLink ID="HyperLink_ChangePw" runat="server" Font-Size="Large" ForeColor="White" NavigateUrl="~/AdminChangePassword.aspx">Change Account Password</asp:HyperLink>
                <br />
                </td>
        </tr>
    </table>
   </div>
</asp:Content>