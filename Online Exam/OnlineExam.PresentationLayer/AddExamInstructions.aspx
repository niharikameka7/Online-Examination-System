<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddExamInstructions.aspx.cs" Inherits="OnlineExam.PresentationLayer.AddExamInstructions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      
   <br />
    <div style="height:650px">
        <a href="ExamDashboard.aspx" id="back_btn" style="display:inline-block;text-align:center;width:166px;font-size:30px; height:57px; background-color:darkviolet;color:white" >Back</a>
     
    <table align="center" style="width: 69%; height: 222px;margin-left:450px">
        <tr>
            <td>
                <asp:Label ID="lbl_addins" runat="server" BackColor="#990099" ForeColor="White" style="text-align:center" Height="52px" Text="Add Instructions" Width="479px" Font-Size="X-Large"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label_id" runat="server" ForeColor="#990099" Text="Enter Instruction ID:" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_id" runat="server" Height="32px" style="margin-top: 12px" Width="594px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_id" runat="server" ControlToValidate="txt_id" ErrorMessage="Please Enter Instruction id" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label_instruction" runat="server" ForeColor="#990099" Text="Enter Instruction:" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_instruction" runat="server" Height="63px" TextMode="MultiLine" Width="597px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_ins" runat="server" ControlToValidate="txt_instruction" ErrorMessage="Please Enter Instruction" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="btn_submit" runat="server" BackColor="#3333CC" BorderColor="White" ForeColor="White" Text="Add" Width="182px" OnClick="submit" Height="42px" Font-Size="Large"/>
                <br />
                <br />
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Result" runat="server" BackColor="#66FF33" Font-Size="Medium" ForeColor="Black"></asp:Label>
                </td>
        </tr>
    </table>
     </div>
</asp:Content>
