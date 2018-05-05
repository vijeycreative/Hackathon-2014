<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Online_Doctor._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:Label ID="Label1" runat="server" Text="What is iQuack?" CssClass="label"></asp:Label>

    <br />
    <br />
    <asp:Label ID="Label2" runat="server" 
        Text="iQuack helps people take charge of their health" CssClass="label2"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" 
        Text="It is a decision support tools to research problems, take action, and improve care for questions like “What could be wrong?” and “Where can I go?”." 
        CssClass="label2"></asp:Label><br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Our Mission Today" CssClass="label"></asp:Label><br />
    <br />
    <asp:Label ID="Label5" runat="server" 
        Text="To empower the conmmunity with control and convenience to effectively manage their personal healthcare and improve healthcare records and data for doctors and healthcare instituition." 
        CssClass="label2"></asp:Label><br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Our Vision For Future" 
        CssClass="label"></asp:Label><br /><br />
    <asp:Label ID="Label7" runat="server" 
        Text="To help the community make better healthcare decisions" CssClass="label2"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label8" runat="server" 
        Text="It's Time You Take Charge of Your Health" CssClass="label"></asp:Label><br />
    <asp:Button ID="Button1" runat="server" Text="Get Started" 
        CssClass="getstarted" onclick="Button1_Click"  />
        <br />
    <br />
    <asp:Label ID="Label9" runat="server" 
        Text="With the new symptom checker, learn possible causes of multiple related symptoms, locate 
        Doctors, and book appointments." CssClass="label2"></asp:Label><br />
    </asp:Content>
