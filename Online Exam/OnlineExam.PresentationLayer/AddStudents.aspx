<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddStudents.aspx.cs" Inherits="OnlineExam.PresentationLayer.AddStudents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <br />
    
        <a href="StudentContent.aspx" id="back_btn" style="display:inline-block;text-align:center;width:166px;font-size:30px; height:57px; background-color:darkviolet;color:white" >Back</a>
     
    <table align="center" style="width: 100%; margin-left:450px">
                 
       <tr>
            <td style="height: 50px; width: 694px;">
                <asp:Label ID="lbl_login" runat="server" BackColor="#990099" ForeColor="White" style="text-align:center" Height="52px" Text="ADD STUDENT" Width="358px" Font-Size="X-Large"></asp:Label>
                <br />
                <br />
            </td>
            <td style="height: 50px">
                </td>
        </tr>
        <tr>
            <td style="width: 694px">
                <asp:Label ID="Label_id" runat="server" ForeColor="#990099" Text="Enter Student ID:" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="id" runat="server" Height="39px" Width="147px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_id" runat="server" ControlToValidate="id" ErrorMessage="Please Enter Student Id" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 694px">
                <asp:Label ID="Label_name" runat="server" ForeColor="#990099" Text="Enter Student Name:" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="name" runat="server" Height="37px" Width="143px" style="margin-left: 0"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_name" runat="server" ControlToValidate="name" ErrorMessage="Please Enter Student Name" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
               <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 694px">
                <asp:Label ID="Label_DOB" runat="server" ForeColor="#990099" Text="Date of Birth  :" Font-Size="Medium"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_date" runat="server" TextMode="Date" Height="36px" Width="146px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_DOB" runat="server" ControlToValidate="txt_date" ErrorMessage="Please Select DOB" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <br />
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 694px">
                <asp:Label ID="Label_gender" runat="server" ForeColor="#990099" Text="Gender :" Font-Size="Medium"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButtonList ID="RadioButtonList_Gender" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" Height="28px" style="margin-left: 0px" Width="155px">
                    <asp:ListItem>Male  </asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_gender" runat="server" ControlToValidate="RadioButtonList_Gender" ErrorMessage="Please Select Gender" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                
                <br />
            </td>
            <td style="height: 20px">
                &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 694px">
                <asp:Label ID="Label_mobile" runat="server" ForeColor="#990099" Text="Mobile Number :" Font-Size="Medium"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="mobile" runat="server" TextMode="Phone" Height="36px" Width="154px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_mobile" runat="server" ControlToValidate="mobile" ErrorMessage="Please Enter Mobile number" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td style="height: 20px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 694px">
                <asp:Label ID="Label_email" runat="server" ForeColor="#990099" Text="Enter Email :" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;<asp:TextBox ID="txt_username" runat="server" TextMode="Email" Height="31px" Width="155px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_email" runat="server" ControlToValidate="txt_username" ErrorMessage="Please Enter Email" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 45px; width: 694px;">
                <asp:Label ID="lbl_pw" runat="server" ForeColor="#990099" Text="Enter Password :" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_pw" runat="server" TextMode="Password" Height="38px" Width="159px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_pw" runat="server" ControlToValidate="txt_pw" ErrorMessage="Please Enter Password" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td style="height: 45px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 45px; width: 694px;">
                <asp:Label ID="Label_confirmpw" runat="server" ForeColor="#990099" Text="Confirm Password :" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="stu_cpw" runat="server" TextMode="Password" Height="37px" Width="157px"></asp:TextBox>
                <asp:CompareValidator ID="pwValidator" runat="server" ControlToCompare="txt_pw" ControlToValidate="stu_cpw" ErrorMessage="Password mismatched" SetFocusOnError="True" ForeColor="Red"></asp:CompareValidator>
                <br />
            </td>
            <td style="height: 45px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 694px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                &nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_submit" runat="server" BackColor="#3333CC" BorderColor="White" ForeColor="White" Text="Submit" Width="182px" OnClick="submit" Height="42px" Font-Size="Large"/>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="status" runat="server" BackColor="#33CC33" Font-Size="Large" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
       
           </table>
		

		
    

		
</asp:Content>
