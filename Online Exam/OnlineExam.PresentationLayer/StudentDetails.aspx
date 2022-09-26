<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="OnlineExam.PresentationLayer.StudentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <br /><div style="height:900px">
            <a href="StudentContent.aspx" id="back_btn" style="display:inline-block;text-align:center;width:151px; height:44px;font-size:30px; background-color:darkviolet;color:white" >Back</a>
    <br />
    <br />

    <table>
     <tr>
            <td style="height: 66px; width: 820px;">
                <asp:Label ID="stu_details" runat="server" BackColor="Green" ForeColor="White" Width=581px Height="70px" Text="Students Details--" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
                <br />
                <br />
            </td>
        </tr>      
   
     <tr>
            <td style="height: 66px; width: 820px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_search" runat="server" Width="204px" Height="28px" ></asp:TextBox>
&nbsp;
                <asp:Button ID="Button_search" runat="server" Text="Search" BackColor="#3333CC" Font-Size="Medium" ForeColor="White" Height="37px" Width="91px"  />
                <br />
                <br />
                <asp:GridView ID="GridViewSearch" style="text-align:center" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Student_ID" DataSourceID="SqlDataSource1" Height="74px" Width="1200px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Student_ID" HeaderText="Student_ID"  ReadOnly="True" SortExpression="Student_ID" />
                        <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" SortExpression="Student_Name" />
                        <asp:BoundField DataField="Student_Email" HeaderText="Student_Email" SortExpression="Student_Email" />
                        <asp:BoundField DataField="Student_Password" HeaderText="Student_Password" SortExpression="Student_Password" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                    </Columns>

                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="Black" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineexam_projectConnectionString %>" SelectCommand="SELECT [Student_ID], [Student_Name], [Student_Email], [Student_Password], [Gender], [DateOfBirth], [Mobile] FROM [Student] WHERE ([Student_ID] = @Student_ID)" DeleteCommand="DELETE FROM [Student] WHERE [Student_ID] = @Student_ID" InsertCommand="INSERT INTO [Student] ([Student_ID], [Student_Name], [Student_Email], [Student_Password], [Gender], [DateOfBirth], [Mobile]) VALUES (@Student_ID, @Student_Name, @Student_Email, @Student_Password, @Gender, @DateOfBirth, @Mobile)" UpdateCommand="UPDATE [Student] SET [Student_Name] = @Student_Name, [Student_Email] = @Student_Email, [Student_Password] = @Student_Password, [Gender] = @Gender, [DateOfBirth] = @DateOfBirth, [Mobile] = @Mobile WHERE [Student_ID] = @Student_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Student_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Student_ID" Type="Int32" />
                        <asp:Parameter Name="Student_Name" Type="String" />
                        <asp:Parameter Name="Student_Email" Type="String" />
                        <asp:Parameter Name="Student_Password" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="DateOfBirth" Type="String" />
                        <asp:Parameter Name="Mobile" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox_search" Name="Student_ID" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Student_Name" Type="String" />
                        <asp:Parameter Name="Student_Email" Type="String" />
                        <asp:Parameter Name="Student_Password" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="DateOfBirth" Type="String" />
                        <asp:Parameter Name="Mobile" Type="String" />
                        <asp:Parameter Name="Student_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>      
   
     <tr>
            <td style="height: 66px; width: 820px;">
                
                <asp:GridView ID="StudentDetailsGridView" style="text-align:center" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ObjectDataSource1" Width="1200px" DataKeyNames="Student_ID" Height="75px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" SortExpression="Student_ID" Readonly="true"/>
                        <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" SortExpression="Student_Name" />
                        <asp:BoundField DataField="Student_Email" HeaderText="Student_Email" SortExpression="Student_Email" />
                                                <asp:BoundField DataField="Student_Password" HeaderText="Student_Password" SortExpression="Student_Password" />

                        <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                      <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />                      

                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="Black" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteStudent" SelectMethod="GetStudents" TypeName="OnlineExam.BusinessLayer.StudentService" UpdateMethod="UpdateStudent">
                    <DeleteParameters>
                        <asp:Parameter Name="Student_ID" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Student_ID" Type="Int32" />
                        <asp:Parameter Name="Student_Name" Type="String" />
                        <asp:Parameter Name="Student_Email" Type="String" />
                        <asp:Parameter Name="Student_Password" Type="String" />
                        <asp:Parameter Name="DateOfBirth" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Mobile" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <br />
              
                
            </td>
        </tr>      
   
    </table>
        </div>
</asp:Content>
