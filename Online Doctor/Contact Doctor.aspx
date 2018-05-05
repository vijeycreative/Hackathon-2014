<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact Doctor.aspx.cs" Inherits="Online_Doctor.Contact_Doctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Panel ID="ConPan" runat="server">
    <h2>Contact Doctor</h2>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Contact No: "></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Email Id: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Subject:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Message: "></asp:Label><br />
        &nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Height="174px" TextMode="MultiLine" 
            Width="710px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="SubBtn" runat="server" Text="Submit" 
            onclick="SubBtn_Click" />
        <br />
    </asp:Panel>
    <asp:Panel ID="SuccPan" runat="server" Visible="False">
     <h2>You have successfully sent a message to the doctor.</h2>
    </asp:Panel>
</asp:Content>
