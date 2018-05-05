<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataViewer.aspx.cs" Inherits="Online_Doctor.DataViewer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<table width="100%" >
    <tr>
        <td>
        <table width="100%" >
            <tr>
                <td style="width:120px; " ><asp:Label runat="server" Text="Cause:" CssClass ="label"></asp:Label></td>
                <td><asp:Label runat="server" ID="lblCauses" CssClass ="label2"></asp:Label></td>
            </tr>
            <tr><td style="height:4px; " ></td></tr>
            <tr>
                <td><asp:Label runat="server" Text="Description: " CssClass ="label"></asp:Label></td>
                <td><asp:Label runat="server" ID="lblDescription" CssClass ="label2"></asp:Label></td>
            </tr>
            <tr><td style="height:4px; " ></td></tr>
            <tr>
                <td><asp:Label runat="server" Text="Symptoms: " CssClass ="label"></asp:Label></td>
                <td><asp:Label runat="server" ID="lblSymptoms1" CssClass ="label2"></asp:Label></td>
            </tr>
            <tr><td style="height:4px; " ></td></tr>
            <tr><td><asp:Label ID="Label1" runat="server" Text="Tests For Checking:" 
                    CssClass ="label" Width="300px"></asp:Label></td>
            <td><asp:Label ID="Label2" runat="server" Text="" CssClass ="label"></asp:Label></td></tr>
            <tr><td style="height:4px; " ></td></tr>
            <tr>
                <td><asp:Label runat="server" Text="Workup: " CssClass ="label3"></asp:Label></td>
                <td><asp:Label runat="server" ID="lblTest1" CssClass ="label2"></asp:Label></td>
            </tr>
            <tr><td style="height:4px; " ></td></tr>
            <tr>
                <td><asp:Label runat="server" Text="Tests: " CssClass ="label3"></asp:Label></td>
                <td><asp:Label runat="server" ID="lblTest2" CssClass ="label2"></asp:Label></td>
            </tr>
            <tr><td style="height:4px; " ></td></tr>
            <tr>
                <td><asp:Label runat="server" Text="Additional Tests:" CssClass ="label3" ></asp:Label></td>
                <td><asp:Label runat="server" ID="lblTest3" CssClass ="label2"></asp:Label></td>
            </tr>
            <tr><td style="height:4px; " ></td></tr>
            <tr>
                <td><asp:Label runat="server" Text="Treatment: " CssClass ="label"></asp:Label></td>
                <td><asp:Label runat="server" ID="lblTreatment" CssClass ="label2"></asp:Label></td>
            </tr>        
        </table>
        </td>
    </tr>
</table>
</asp:Content>
