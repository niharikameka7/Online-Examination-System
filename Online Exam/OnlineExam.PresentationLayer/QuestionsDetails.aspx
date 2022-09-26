<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QuestionsDetails.aspx.cs" Inherits="OnlineExam.PresentationLayer.QuestionsDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height:900px">
     <br />
            <a href="ExamDashboard.aspx" id="back_btn" style="display:inline-block;text-align:center;width:151px; height:44px;font-size:30px; background-color:darkviolet;color:white" >Back</a>
    <br /> 
    <br />
    <table align="left" class="nav-justified" style="height: 168px">
        <tr>
            <td style="height: 121px">&nbsp;<asp:Label ID="questiondetails" runat="server" BackColor="Green" ForeColor="White" Width=581px Height="70px" Text="Questions Details--" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
                <br />
               
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="Text_search" runat="server" Height="34px" Width="200px"></asp:TextBox>&nbsp;
                <asp:Button ID="Button_search" runat="server" BackColor="#3333CC" ForeColor="White" Height="39px" Text="Search" Width="110px" Font-Size="Medium" />
                <br />
                <asp:GridView ID="GridView_Search" style="text-align:center" runat="server"  Width=1200px height="75px" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Question_no" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Question_no" ReadOnly="true" HeaderText="Question_no"  SortExpression="Question_no" />
                        <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                        <asp:BoundField DataField="Option1" HeaderText="Option1" SortExpression="Option1" />
                        <asp:BoundField DataField="Option2" HeaderText="Option2" SortExpression="Option2" />
                        <asp:BoundField DataField="Option3" HeaderText="Option3" SortExpression="Option3" />
                        <asp:BoundField DataField="Option4" HeaderText="Option4" SortExpression="Option4" />
                        <asp:BoundField DataField="Qn_Answer" HeaderText="Qn_Answer" SortExpression="Qn_Answer" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineexam_projectConn %>" DeleteCommand="DELETE FROM [Question] WHERE [Question_no] = @Question_no" InsertCommand="INSERT INTO [Question] ([Question_no], [Question], [Option1], [Option2], [Option3], [Option4], [Qn_Answer]) VALUES (@Question_no, @Question, @Option1, @Option2, @Option3, @Option4, @Qn_Answer)" SelectCommand="SELECT * FROM [Question] WHERE ([Question_no] = @Question_no)" UpdateCommand="UPDATE [Question] SET [Question] = @Question, [Option1] = @Option1, [Option2] = @Option2, [Option3] = @Option3, [Option4] = @Option4, [Qn_Answer] = @Qn_Answer WHERE [Question_no] = @Question_no">
                    <DeleteParameters>
                        <asp:Parameter Name="Question_no" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Question_no" Type="Int32" />
                        <asp:Parameter Name="Question" Type="String" />
                        <asp:Parameter Name="Option1" Type="String" />
                        <asp:Parameter Name="Option2" Type="String" />
                        <asp:Parameter Name="Option3" Type="String" />
                        <asp:Parameter Name="Option4" Type="String" />
                        <asp:Parameter Name="Qn_Answer" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Text_search" Name="Question_no" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Question" Type="String" />
                        <asp:Parameter Name="Option1" Type="String" />
                        <asp:Parameter Name="Option2" Type="String" />
                        <asp:Parameter Name="Option3" Type="String" />
                        <asp:Parameter Name="Option4" Type="String" />
                        <asp:Parameter Name="Qn_Answer" Type="String" />
                        <asp:Parameter Name="Question_no" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="QnDetailsGridView" runat="server" style="text-align:center" Width=1200px height="75px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" DataKeyNames="Question_no" BorderWidth="1px" CellPadding="3" DataSourceID="ObjectDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="Question_no" ReadOnly="true" HeaderText="Question_no"  SortExpression="Question_no" />
                        <asp:BoundField DataField="Questions" HeaderText="Questions" SortExpression="Questions" />
                        <asp:BoundField DataField="Option1" HeaderText="Option1" SortExpression="Option1" />
                        <asp:BoundField DataField="Option2" HeaderText="Option2" SortExpression="Option2" />
                        <asp:BoundField DataField="Option3" HeaderText="Option3" SortExpression="Option3" />
                        <asp:BoundField DataField="Option4" HeaderText="Option4" SortExpression="Option4" />
                        <asp:BoundField DataField="Qn_Answer" HeaderText="Qn_Answer" SortExpression="Qn_Answer" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete_Question" SelectMethod="GetQuestions" TypeName="OnlineExam.BusinessLayer.QuestionService" UpdateMethod="Update_Question">
                    <DeleteParameters>
                        <asp:Parameter Name="Question_no" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Question_no" Type="Int32" />
                        <asp:Parameter Name="Questions" Type="String" />
                        <asp:Parameter Name="Option1" Type="String" />
                        <asp:Parameter Name="Option2" Type="String" />
                        <asp:Parameter Name="Option3" Type="String" />
                        <asp:Parameter Name="Option4" Type="String" />
                        <asp:Parameter Name="Qn_Answer" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        
    </table>
       </div>
</asp:Content>
