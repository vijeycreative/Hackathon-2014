<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DoctorDashBoard.aspx.cs" Inherits="Online_Doctor.DoctorDashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>Doctor's Dashboard</h2>
    <br />
    <br />
<h3>Profile Info:</h3>
    <br />
    <asp:Label ID="IDLabel" runat="server" Text="User ID: "></asp:Label>&nbsp;&nbsp;
    <asp:Label ID="UserIDLabel" runat="server" ></asp:Label>
    <br />
    <br />
    <asp:Label ID="MailLabel" runat="server" Text="Email ID: " ></asp:Label>&nbsp;&nbsp;
    <asp:Label ID="MailIdLabel" runat="server" ></asp:Label>
    <br />
    <br />
    <asp:Button ID="ChatBtn" runat="server" Text="Chat Room" />
</asp:Content>
