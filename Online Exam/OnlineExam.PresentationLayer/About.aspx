<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="OnlineExam.PresentationLayer.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    
    <div style="background-color:white;height:750px">
            <a href="Home.aspx" id="back_btn" style="display:inline-block;text-align:center;width:166px;font-size:30px; height:57px; background-color:darkviolet;color:white" >Back</a>
        
    <h2><%: Title %>.</h2>
    <h3>This Application is useful for taking online exams.</h3>
    <p>This Online Examination System not only replace paperwork but also releases the workload of faculty. It fulfills the requirements of institutes to conduct exams online. Students can give exam without need of going to any physical destination. They can view the result at the same time. Thus the purpose of this site is to provide a system that saves the efforts and time of faculty.</p>

</div></asp:Content>
