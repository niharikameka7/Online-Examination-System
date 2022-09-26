<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewStudentExamDetails.aspx.cs" Inherits="OnlineExam.PresentationLayer.ViewStudents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><div style="height:900px">
            <a href="StudentContent.aspx" id="back_btn" style="display:inline-block;text-align:center;width:151px; height:44px;font-size:30px; background-color:darkviolet;color:white" >Back</a>
    <br />
    <br />
    <table>
     <tr>
            <td style="height: 66px">
                <asp:Label ID="stu_examdetails" runat="server" BackColor="Green" ForeColor="White" Width=581px Height="70px" Text="Students Exam Results--" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;
            </td>
        </tr>   
        <tr> 
            <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Text_search" runat="server" Height="34px" Width="200px"></asp:TextBox>&nbsp;
                <asp:Button ID="Button_search" runat="server" BackColor="#3333CC" ForeColor="White" Height="39px" Text="Search" Width="110px" Font-Size="Medium" />
           
                <br />
                <asp:GridView ID="SearchExamResults_GridView" runat="server" style="text-align:center"  Width=1200px height="75px" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" DataKeyNames="Student_ID">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="Student_ID"  HeaderText="Student_ID" SortExpression="Student_ID" ReadOnly="True" />
                        <asp:BoundField DataField="Student_Email" HeaderText="Student_Email" SortExpression="Student_Email" />
                        <asp:BoundField DataField="Student_Score" HeaderText="Student_Score" SortExpression="Student_Score" />
                        <asp:BoundField DataField="ExamDate" HeaderText="ExamDate" SortExpression="ExamDate" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineexam_projectConn %>" DeleteCommand="DELETE FROM [ExamResults] WHERE [Student_ID] = @Student_ID" InsertCommand="INSERT INTO [ExamResults] ([Student_ID], [Student_Email], [Student_Score], [ExamDate]) VALUES (@Student_ID, @Student_Email, @Student_Score, @ExamDate)" SelectCommand="SELECT * FROM [ExamResults] WHERE ([Student_ID] = @Student_ID)" UpdateCommand="UPDATE [ExamResults] SET [Student_Email] = @Student_Email, [Student_Score] = @Student_Score, [ExamDate] = @ExamDate WHERE [Student_ID] = @Student_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Student_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Student_ID" Type="Int32" />
                        <asp:Parameter Name="Student_Email" Type="String" />
                        <asp:Parameter Name="Student_Score" Type="String" />
                        <asp:Parameter Name="ExamDate" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Text_search" Name="Student_ID" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Student_Email" Type="String" />
                        <asp:Parameter Name="Student_Score" Type="String" />
                        <asp:Parameter Name="ExamDate" Type="String" />
                        <asp:Parameter Name="Student_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <br />
           
                </td></tr>     <br />

     <tr>
            <td style="height: 66px">
                <asp:GridView ID="ExamDetailsGridView" style="text-align:center" runat="server" Width=1200px height="75px" AllowSorting="True" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ObjectDataSource1" DataKeyNames="Student_ID">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="Student_ID" Readonly="true" HeaderText="Student_ID" SortExpression="Student_ID" />
                        <asp:BoundField DataField="Student_Email" HeaderText="Student_Email" SortExpression="Student_Email" />
                        <asp:BoundField DataField="Student_Score" HeaderText="Student_Score" SortExpression="Student_Score" />
                        <asp:BoundField DataField="ExamDate" HeaderText="ExamDate" SortExpression="ExamDate" />
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
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete_Result" SelectMethod="GetResults" TypeName="OnlineExam.BusinessLayer.ResultService"  UpdateMethod="Update_Result">
                    <DeleteParameters>
                        <asp:Parameter Name="Student_ID" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Student_ID" Type="Int32" />
                        <asp:Parameter Name="Student_Email" Type="String" />
                        <asp:Parameter Name="Student_Score" Type="String" />
                        <asp:Parameter Name="ExamDate" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>      
   
    </table>
        </div>
</asp:Content>
