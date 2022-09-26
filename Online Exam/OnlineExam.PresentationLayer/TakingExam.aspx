<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TakingExam.aspx.cs" Inherits="OnlineExam.PresentationLayer.TakingExam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color:white">
    <table align="center" class="nav-justified">
      <tr>
 <center> <div id="time" class="navbar navbar-fixed-top" style="font-size:30px;height:70px;background-color:blue;color:white">
         
         <asp:UpdatePanel ID="UpdatePanelExam" runat="server">
<ContentTemplate>
<asp:Timer ID="ExamTimer" runat="server" Interval="1000" ontick="ExamTimer_Tick">
</asp:Timer>
<asp:Label ID="Label_timer" runat="server" Text=""></asp:Label>
</ContentTemplate>
</asp:UpdatePanel>
</div></center>

        </tr>
       <tr>            <td style="height: 20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:LinkButton ID="LinkButton_finishExam" class="navbar navbar-fixed-top" runat="server" BackColor="red" Font-Size="XX-Large" ForeColor="White" Height="70px" OnClick="LinkButton_finishExam_Click" Width="161px" style="text-align:center;margin-right:10px;">Finish Test</asp:LinkButton>
</td>
           </tr>
        <tr style="background-color:white ;width:1300px">
        <asp:GridView ID="gridview_examquestion" style="margin-left:10px;font-size:18px;font-weight:bold" runat="server" AutoGenerateColumns="False" GridLines="None">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="lblid" runat="server" Text='<%# Eval("Question_no") %>' Visible="true"></asp:Label>
                    <asp:Label ID="Label_dot" runat="server" Text=". "></asp:Label>
                    <asp:Label ID="lbl_question" runat="server" Text='<%# Eval("Question") %>'></asp:Label>
                    <br />
                    <asp:RadioButton GroupName="a" Text='<%# Eval("Option1") %>' ID="option_one" runat="server" />
                    <br />
                    <asp:RadioButton GroupName="a" Text='<%# Eval("Option2") %>' ID="option_two" runat="server" />
                    <br />
                    <asp:RadioButton GroupName="a" Text='<%# Eval("Option3") %>' ID="option_three" runat="server" />
                    <br />
                    <asp:RadioButton GroupName="a" Text='<%# Eval("Option4") %>' ID="option_four" runat="server" />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
          
        <asp:Label ID="Label_error" runat="server" style="text-align:center;" Text="" Visible="false"></asp:Label>
    
       
            </tr>
            </table>
    </div>
</asp:Content>
