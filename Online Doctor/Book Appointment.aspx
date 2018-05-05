<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Book Appointment.aspx.cs" Inherits="Online_Doctor.Book_Appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Book An Appointment With Doctor</h1><br />
    <asp:Panel ID="bookapp" runat="server">
        <asp:Label ID="NameLabel" runat="server" Text="Name: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="ConNuLabel" runat="server" Text="Contact No:"></asp:Label>&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="emaillabel" runat="server" Text="Email: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Datechoose" runat="server" 
        Text="Please Choose A Date For Appointment: "></asp:Label>
    <br />
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    <br />
    <asp:Label ID="HelRecLabel" runat="server" Text="Attach Your Health Record: "></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />
    <br />
    <asp:Label ID="ResLabel" runat="server" Text="Describe Your Problem: "></asp:Label>
    <br />
    <asp:TextBox ID="TextBox4" runat="server" Height="147px" TextMode="MultiLine" 
        Width="285px"></asp:TextBox>
    <br />
    <br />
&nbsp;<asp:CheckBox ID="CheckBox1" runat="server" 
        Text="Check This To Get A Read Receipt" TextAlign="Left" />
    <br />
    <br />
    <asp:Button ID="SubBtn" runat="server" Text="Submit" onclick="SubBtn_Click" />
    </asp:Panel>
    <br />
    <asp:Panel ID="bookappsuccess" runat="server" Visible="False">
    <h3>You have successfully booked appointment with the doctor. </h3>
    </asp:Panel>

</asp:Content>
