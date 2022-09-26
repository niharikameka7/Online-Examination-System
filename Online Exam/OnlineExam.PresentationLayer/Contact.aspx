<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OnlineExam.PresentationLayer.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    
    <div style="background-color:white;height:750px">
            <a href="Home.aspx" id="back_btn" style="display:inline-block;text-align:center;width:166px;font-size:30px; height:57px; background-color:darkviolet;color:white" >Back</a>
        
    <h2><%: Title %>.</h2>
    <h3>Need help? Contact us At:</h3>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
        </div>
</asp:Content>
