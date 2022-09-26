<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExamInstructions.aspx.cs" Inherits="OnlineExam.PresentationLayer.ExamInstructions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <div style="background-color:white;"> 

    <br />
    
        <a href="StudentDashboard.aspx" id="back_btn" style="display:inline-block;text-align:center;width:187px; height:53px;font-size:30px; background-color:darkviolet;color:white" >Back</a>
     
    <table align="center" style="height: 100px;" class="nav-justified">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 66px">
                <asp:Label ID="Label_instructions" runat="server" BackColor="Green" ForeColor="White" Width=581px Height="70px" Text="Exam Instructions before taking exam--" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
            </td>
        </tr>
       
        <tr>
            <td style="height: 20px;text-align: justify;text-justify: inter-word;">&nbsp;&nbsp;<b>
               <asp:GridView ID="gridview_instructions" style="margin-left:10px;font-size:18px;font-weight:bold;background-color:white" runat="server" AutoGenerateColumns="False" GridLines="None">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="insid" runat="server" Text='<%# Eval("Instruction_ID") %>' Visible="true"></asp:Label>
                    <asp:Label ID="Label_dot" runat="server" Text=". "></asp:Label>
                    <asp:Label ID="lbl_ins" runat="server" Text='<%# Eval("Instruction") %>'></asp:Label>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

                <asp:CheckBox ID="terms" runat="server" style="margin-left:10px;font-size:18px;font-weight:bold;background-color:white" Text="  I have read and accept the terms&amp;conditions." Font-Bold="True" Width="436px"  />
                <br />
           </b>     <br />
            <asp:Label ID="Label_error" runat="server" style="font-size:18px;text-align:center;color:red" Text="" Visible="false"></asp:Label>

            </td>

        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton_startExam" runat="server" BackColor="#009900" Font-Size="X-Large" ForeColor="White" Height="52px" OnClick="LinkButton_startExam_Click" Width="309px" style="text-align:center">Start Exam</asp:LinkButton>
                <br />
                <br />
                <asp:Label ID="Label_attempted" runat="server" BackColor="Red" Font-Size="X-Large" ForeColor="White" Text="" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
     </div>
</asp:Content>
