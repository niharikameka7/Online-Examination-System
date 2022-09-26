<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewAdminsDetails.aspx.cs" Inherits="OnlineExam.PresentationLayer.ViewAdminsDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <br /><div style="height:900px">
            <a href="AdminContent.aspx" id="back_btn" style="display:inline-block;text-align:center;width:151px; height:44px;font-size:30px; background-color:darkviolet;color:white" >Back</a>
    <br />
    <br />
    <table>
     <tr>
            <td style="height: 66px">
                <asp:Label ID="admindetails" runat="server" BackColor="Green" ForeColor="White" Width=581px Height="70px" Text="Admins Details--" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="Text_search" runat="server" Height="34px" Width="200px"></asp:TextBox>
&nbsp;
                <asp:Button ID="Button_search" runat="server" BackColor="#3333CC" ForeColor="White" Height="39px" Text="Search" Width="110px" Font-Size="Medium" />
                <br />
                <br />
                <asp:GridView ID="GridViewSearch" style="text-align:center" runat="server" Width=1200px AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Admin_ID" DataSourceID="SqlDataSource1"  Height="75px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Admin_ID" HeaderText="Admin_ID" ReadOnly="True" SortExpression="Admin_ID" />
                        <asp:BoundField DataField="Admin_Name" HeaderText="Admin_Name" SortExpression="Admin_Name" />
                        <asp:BoundField DataField="Admin_Email" HeaderText="Admin_Email" SortExpression="Admin_Email" />
                        <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                       <asp:BoundField DataField="Gender"  HeaderText="Gender" SortExpression="Gender"/>
                                              
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineexam_projectConn %>" DeleteCommand="DELETE FROM [Admin] WHERE [Admin_ID] = @Admin_ID" InsertCommand="INSERT INTO [Admin] ([Admin_ID], [Admin_Name], [Admin_Email], [Gender], [DateOfBirth], [Mobile]) VALUES (@Admin_ID, @Admin_Name, @Admin_Email, @Gender, @DateOfBirth, @Mobile)" SelectCommand="SELECT [Admin_ID], [Admin_Name], [Admin_Email], [Gender], [DateOfBirth], [Mobile] FROM [Admin] WHERE ([Admin_ID] = @Admin_ID)" UpdateCommand="UPDATE [Admin] SET [Admin_Name] = @Admin_Name, [Admin_Email] = @Admin_Email, [Gender] = @Gender, [DateOfBirth] = @DateOfBirth, [Mobile] = @Mobile WHERE [Admin_ID] = @Admin_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Admin_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Admin_ID" Type="Int32" />
                        <asp:Parameter Name="Admin_Name" Type="String" />
                        <asp:Parameter Name="Admin_Email" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="DateOfBirth" Type="String" />
                        <asp:Parameter Name="Mobile" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Text_search" Name="Admin_ID" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Admin_Name" Type="String" />
                        <asp:Parameter Name="Admin_Email" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="DateOfBirth" Type="String" />
                        <asp:Parameter Name="Mobile" Type="String" />
                        <asp:Parameter Name="Admin_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>      
   
     <tr>
            <td style="height: 66px;text-align:center">
                <asp:GridView  ID="AdminDetailsGridView" style="text-align:center" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Admin_ID" DataSourceID="ObjectDataSource1" Width="1200px" Height="75px"  >
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="Admin_ID"  HeaderText="Admin_ID" SortExpression="Admin_ID"  ReadOnly="true"/>
                        <asp:BoundField DataField="Admin_Name" HeaderText="Admin_Name" SortExpression="Admin_Name" />
                        <asp:BoundField DataField="Admin_Email" HeaderText="Admin_Email" SortExpression="Admin_Email" />
                        <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />       
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                       <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" CssClass="text-align=center" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="Black" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <br />
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete_Admin" SelectMethod="GetAdmins" TypeName="OnlineExam.BusinessLayer.AdminService" UpdateMethod="Update_Admin">
                    <DeleteParameters>
                        <asp:Parameter Name="Admin_ID" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Admin_ID" Type="Int32" />
                        <asp:Parameter Name="Admin_Name" Type="String" />
                        <asp:Parameter Name="Admin_Email" Type="String" />
                        <asp:Parameter Name="Admin_Password" Type="String" />
                        <asp:Parameter Name="DateOfBirth" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Mobile" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>      
   
    </table>
         </div>
</asp:Content>
