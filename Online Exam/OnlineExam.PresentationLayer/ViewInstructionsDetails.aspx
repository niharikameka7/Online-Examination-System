<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewInstructionsDetails.aspx.cs" Inherits="OnlineExam.PresentationLayer.ViewInstructionsDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br /><div style="height:900px">
            <a href="ExamDashboard.aspx" id="back_btn" style="display:inline-block;text-align:center;width:166px;font-size:30px; height:57px; background-color:darkviolet;color:white" >Back</a>

        <table align="left" class="nav-justified">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><asp:Label ID="instructiondetails" runat="server" BackColor="Green" ForeColor="White" Width=581px Height="70px" Text="Instructions Details--" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="InstructionDetailsGridView" style="text-align:center" DataKeyNames="Instruction_ID" Width="1200px" Height="74px" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ObjectDataSource1" AllowSorting="True">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="Instruction_ID" ReadOnly="true" HeaderText="Instruction_ID" SortExpression="Instruction_ID" />
                            <asp:BoundField DataField="Instruction" HeaderText="Instruction" SortExpression="Instruction" />
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
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete_Instruction" SelectMethod="GetInstructions" TypeName="OnlineExam.BusinessLayer.InstructionsService" UpdateMethod="Update_Instruction">
                        <DeleteParameters>
                            <asp:Parameter Name="Instruction_ID" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Instruction_ID" Type="Int32" />
                            <asp:Parameter Name="Instruction" Type="String" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
    </table>
    
     
      &nbsp;
</div>
</asp:Content>
