<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SetTime.aspx.cs" Inherits="OnlineExam.PresentationLayer.SetTime" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <br />
  <a href="ExamDashboard.aspx" id="back_btn" style="display:inline-block;text-align:center;width:166px;font-size:30px; height:57px; background-color:darkviolet;color:white" >Back</a>

    <br />
    <table align="center" style="width: 50%;height:650px;margin-left:450px">
        <tr>
            <td>
               
                <asp:Label ID="lbl_settime" runat="server" BackColor="#990099" ForeColor="White" style="text-align:center" Height="49px" Text="Set Exam Time" Width="380px" Font-Size="X-Large"></asp:Label>
               
                <br />
                <br />
                <br />
                <asp:Label ID="Label_timer" runat="server" ForeColor="#990099" Text="Enter Time(&quot;h:mm:ss&quot;) :" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_timer" runat="server" Height="33px" Width="167px" OnTextChanged="txt_change"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="set_time" runat="server" BackColor="#3333CC" ForeColor="White" Height="44px" Text="Set Time" Width="166px" OnClick="add_time_Click" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Result" runat="server" BackColor="#33CC33" Font-Size="Large" ForeColor="Black" Visible="False"></asp:Label>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label_status" runat="server" BackColor="#33CC33" Font-Size="Large" ForeColor="Black">Current Exam time is: </asp:Label>
                </td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
