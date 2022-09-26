<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentChangePassword.aspx.cs" Inherits="OnlineExam.PresentationLayer.StudentChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
   <div style="height:650px">
    <div><a href="StudentDashboard.aspx" id="back_btn" style="display:inline-block;text-align:center;width:151px; height:44px;font-size:30px; background-color:darkviolet;color:white" >Back</a>
</div>
    <table align="center" style="margin-left:450px">

        <tr>
            <td style="width: 690px">
         
                <asp:Label ID="lbl_changepw" runat="server" BackColor="#990099" ForeColor="White" style="text-align:center;" Height="61px" Text="CHANGE ACCOUNT PASSWORD" Width="405px" Font-Size="X-Large"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 690px" >
                &nbsp;
                <asp:Label ID="Label_studentid" runat="server" ForeColor="#990099" Text="Enter Student ID :" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_studentid" runat="server" Height="36px" Width="190px" style="margin-left: 0"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_studentid" ErrorMessage="Please Enter Student id" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 690px" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;
                <asp:Label ID="Label_currentpw" runat="server" ForeColor="#990099" Text="Enter Current Password :" Font-Size="Medium"></asp:Label>
&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="txt_currentpw" runat="server" TextMode="Password" Height="36px" Width="188px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_currentpw" runat="server" ControlToValidate="txt_currentpw" ErrorMessage="Please Enter Current Password" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 690px" >
                &nbsp;
                <asp:Label ID="lbl_newpw" runat="server" ForeColor="#990099" Text="Enter New Password :" Font-Size="Medium"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_newpw" runat="server" TextMode="Password" Height="36px" Width="187px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_newpw" runat="server" ControlToValidate="txt_newpw" ErrorMessage="Please Enter New Password" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 690px" >
                &nbsp;&nbsp;
                <asp:Label ID="lbl_confirmpw" runat="server" ForeColor="#990099" Text="Re-enter New Password :" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_cnewpw" runat="server" TextMode="Password" Height="36px" Width="192px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_cnewpw" runat="server" ControlToValidate="txt_cnewpw" ErrorMessage="Please Re-Enter New Password" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="pwValidator" runat="server" ControlToCompare="txt_newpw" ControlToValidate="txt_cnewpw" ErrorMessage="Password mismatched" SetFocusOnError="True" ForeColor="Red" Font-Size="Medium"></asp:CompareValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 77px; width: 690px;" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="Button_changepw" runat="server" BackColor="#3333CC" ForeColor="White" Height="57px" OnClick="Button_changepw_Click" Text="Change" Width="168px" Font-Size="Large" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Result" runat="server" BackColor="#33CC33" Font-Size="Large" ForeColor="Black"></asp:Label>
                <br />
            </td>
        </tr>
         </table>
       </div>
</asp:Content>
