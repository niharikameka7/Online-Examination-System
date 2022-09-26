<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SetExam.aspx.cs" Inherits="OnlineExam.PresentationLayer.SetExam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    

  <div><a href="ExamDashboard.aspx" id="back_btn" style="display:inline-block;text-align:center;width:151px; height:44px;font-size:30px; background-color:darkviolet;color:white" >Back</a>
</div>
<table align="center" style="width: 50%;margin-left:450px; margin-right: 77px;">

         <tr>
            <td style="width: 488px">
         
                <asp:Label ID="set_qns" runat="server" BackColor="#990099" ForeColor="White" style="text-align:center;" Height="52px" Text="SET QUESTIONS" Width="417px" Font-Size="X-Large"></asp:Label>
                <br />
&nbsp;
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 488px">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label_id" runat="server" Font-Size="Medium" ForeColor="#990099" Text="Question No :" Width="116px"></asp:Label>
                <asp:TextBox ID="qn_id" runat="server" Height="36px" style="margin-left: 0" Width="359px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_id" runat="server" ControlToValidate="qn_id" ErrorMessage="Please Enter Question number" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 488px">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label_qn" runat="server" Font-Size="Medium" ForeColor="#990099" Text="Question  :" Width="117px"></asp:Label>
                <asp:TextBox ID="qn" runat="server" Height="42px" Width="402px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_qn" runat="server" ControlToValidate="qn" ErrorMessage="Please Enter Question" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 488px">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label_o1" runat="server" Font-Size="Medium" ForeColor="#990099" Text="Option 1 :" Width="118px"></asp:Label>
                <asp:TextBox ID="qn_o1" runat="server" Height="33px" Width="354px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_o1" runat="server" ControlToValidate="qn_o1" ErrorMessage="Please Enter Option1" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 20px; width: 488px;">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label_o2" runat="server" Font-Size="Medium" ForeColor="#990099" Text="Option 2 :" Width="100px"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="qn_o2" runat="server" Height="30px" Width="359px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_o2" runat="server" ControlToValidate="qn_o2" ErrorMessage="Please Enter Option2" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 488px">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label_o3" runat="server" Font-Size="Medium" ForeColor="#990099" Text="Option 3 :" Width="100px"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="qn_o3" runat="server" Height="28px" Width="362px" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 488px; height: 150px">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label_o4" runat="server" Font-Size="Medium" ForeColor="#990099" Text="Option 4 :" Width="100px"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="qn_o4" runat="server" Height="28px" Width="362px" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label_answer" runat="server" Font-Size="Medium" ForeColor="#990099" Text="Answer :" Width="100px"></asp:Label>
                   <asp:RadioButtonList ID="rdo_correctanswer" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table" CellPadding="10" Height="46px" style="margin-left: 72px" Width="221px">
                            <asp:ListItem Text="A" Value=1></asp:ListItem>
                            <asp:ListItem Text="B" Value=2></asp:ListItem>
                            <asp:ListItem Text="C" Value=3></asp:ListItem>
                            <asp:ListItem Text="D" Value=4></asp:ListItem>
                        </asp:RadioButtonList>             
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_answer" runat="server" ControlToValidate="rdo_correctanswer" ErrorMessage="Please Select Answer" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 488px; height: 125px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="add_qn" runat="server" BackColor="#3333CC" ForeColor="White" Height="44px" Text="Add Question" Width="166px" OnClick="add_qn_Click" />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="clear" runat="server" BackColor="#3333CC" ForeColor="White" Height="44px" Text="Clear" Width="166px" OnClick="clear_Click" />
                <br />
                <br />
&nbsp;&nbsp;
                <asp:Label ID="Result" runat="server" BackColor="#33CC33" Font-Size="Large" ForeColor="Black"></asp:Label>
            </td>
        </tr>
    </table>
       


    </asp:Content>
