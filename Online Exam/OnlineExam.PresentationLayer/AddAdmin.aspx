
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddAdmin.aspx.cs" Inherits="OnlineExam.PresentationLayer.AddAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
  <a href="AdminContent.aspx" id="back_btn" style="display:inline-block;text-align:center;width:166px;font-size:30px; height:57px; background-color:darkviolet;color:white" >Back</a>

    <br />
    <table align="center" style="margin-left:450px"> 
        <tr>
            <td style="height: 50px">
                <asp:Label ID="lbl_addadmin" runat="server" BackColor="#990099" ForeColor="White" style="text-align:center" Height="49px" Text="ADD ADMIN" Width="380px" Font-Size="X-Large"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label_admin_id" runat="server" ForeColor="#990099" Text="Enter Admin ID :" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="txt_adminid" runat="server"  Height="40px" style="margin-top: 12px" Width="194px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_id" runat="server" ControlToValidate="txt_adminid" ErrorMessage="Please Enter Admin Id" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label_name" runat="server" ForeColor="#990099" Text="Enter Admin Name:" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="name" runat="server" Height="37px" Width="193px" style="margin-left: 0"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_name" runat="server" ControlToValidate="name" ErrorMessage="Please Enter Name" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 65px">
                <asp:Label ID="Label_DOB" runat="server" ForeColor="#990099" Text="Date of Birth  :" Font-Size="Medium"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txt_date" runat="server" TextMode="Date" Height="36px" Width="199px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_dob" runat="server" ControlToValidate="txt_date" ErrorMessage="Please Select DOB" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label_gender" runat="server" ForeColor="#990099" Text="Gender :" Font-Size="Medium"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:RadioButtonList ID="RadioButtonList_Gender" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" Height="28px" style="margin-left: 0px" Width="207px">
                    <asp:ListItem>Male  </asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_gender" runat="server" ControlToValidate="RadioButtonList_Gender" ErrorMessage="Please Select Gender" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label_mobile" runat="server" ForeColor="#990099" Text="Mobile Number :" Font-Size="Medium"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="mobile" runat="server" TextMode="Phone" Height="36px" Width="196px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_mobile" runat="server" ControlToValidate="mobile" ErrorMessage="Please Enter Mobile Number" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label_email" runat="server" ForeColor="#990099" Text="Enter Email :" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="txt_email" runat="server" TextMode="Email" Height="40px" style="margin-top:12px" Width="195px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_email" runat="server" ControlToValidate="txt_email" ErrorMessage="Please Enter Email" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 45px">
                <asp:Label ID="lbl_newpw" runat="server" ForeColor="#990099" Text="Enter New Password :" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="txt_newpw" runat="server" TextMode="Password" Height="36px" Width="193px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_pw" runat="server" ControlToValidate="txt_newpw" ErrorMessage="Please Enter Password" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 45px">
                <asp:Label ID="lbl_cnewpw" runat="server" ForeColor="#990099" Text="Confirm New Password:" Font-Size="Medium"></asp:Label>
                <asp:TextBox ID="txt_cnewpw" runat="server" TextMode="Password" Height="36px" Width="193px" style="margin-left: 12px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_confirmpw" runat="server" ControlToValidate="txt_cnewpw" ErrorMessage="Please Re-Enter Password" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="pwValidator" runat="server" ControlToCompare="txt_newpw" ControlToValidate="txt_cnewpw" ErrorMessage="Password mismatched" SetFocusOnError="True" ForeColor="Red" Font-Size="Medium"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_submit" runat="server" BackColor="#3333CC" BorderColor="White" ForeColor="White" Text="Submit" Width="198px" OnClick="btn_submit_Click1" Height="54px" Font-Size="Large"/>
                <br />
                <br />
            </td>
        </tr>
       
        <tr>
            <td>
                <asp:Label ID="status" runat="server" BackColor="#33CC33" Font-Size="Large" ForeColor="Black"></asp:Label>
            </td>
        </tr>
       
           </table>
</asp:Content>
