﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="Online_Doctor.RegisterUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel runat="server" ID="pnlRegister" >
        <h2>
            Create a New Account
        </h2>
        <p>
            Use the form below to create a new account.
        </p>
        <p>
            Passwords are required to be a minimum of <%= Membership.MinRequiredPasswordLength %> characters in length.
        </p>
        <span class="failureNotification">
            <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
        </span>
        <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification" 
                ValidationGroup="RegisterUserValidationGroup"/>
        <div class="accountInfo">
            <fieldset class="register">
                <legend>Account Information</legend>
                <p>
                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                    <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                            CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required." 
                            ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:Label ID="Label1" runat="server" Text="UserType" ></asp:Label><br />
                    <asp:DropDownList runat="server" ID="drpUserType" Width="320px" >
                        <asp:ListItem Text="Client" Value="Client" ></asp:ListItem>
                        <asp:ListItem Text="Doctor" Value="Doctor" ></asp:ListItem>    
                    </asp:DropDownList>
                </p>
                <p>
                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                    <asp:TextBox ID="Email" runat="server" CssClass="textEntry"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" 
                            CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required." 
                            ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                    <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                            CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required." 
                            ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                    <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" CssClass="failureNotification" Display="Dynamic" 
                            ErrorMessage="Confirm Password is required." ID="ConfirmPasswordRequired" runat="server" 
                            ToolTip="Confirm Password is required." ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                            CssClass="failureNotification" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."
                            ValidationGroup="RegisterUserValidationGroup">*</asp:CompareValidator>
                </p>
            </fieldset>
            <p class="submitButton">
                <asp:Button ID="CreateUserButton" runat="server" CommandName="MoveNext" Text="Create User" 
                        ValidationGroup="RegisterUserValidationGroup" 
                    onclick="CreateUserButton_Click"/>
            </p>
            <br />
            <asp:Label runat="server" ID="lblMessage" Visible="false" Text="Email is already available." ></asp:Label>
        </div>
        </asp:Panel>
        <asp:Panel runat="server" ID="pnlSuccess" Visible="false" >
            <asp:Label runat="server" Text="Registered Successfully. " ></asp:Label>
            <a href="LoginUser.aspx" >Click here</a> to login.
        </asp:Panel>
</asp:Content>
