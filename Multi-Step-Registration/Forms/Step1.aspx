<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/registration-steps.Master" AutoEventWireup="true" CodeBehind="Step1.aspx.cs" Inherits="Multi_Step_Registration.Forms.Step1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Step 1: Personal Information</h2>
            <div class="form-group">
                <asp:Label ID="fullNameLabel" runat="server" Text="Full Name:" />
                <asp:TextBox ID="fullNameTextBox" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
                <small class="form-text text-muted">Must be at least two words</small>

                <asp:RequiredFieldValidator CssClass="alert-danger" ID="fullNameRequired" runat="server" ControlToValidate="fullNameTextBox"
                    ErrorMessage="Full Name is required." />

                <asp:RegularExpressionValidator CssClass="alert-danger" ID="fullNameRegex" runat="server" ControlToValidate="fullNameTextBox"
                    ValidationExpression="\b\w+\b.*\b\w+\b" ErrorMessage="Full Name must be at least two words." />

            </div>

            <div class="form-group">
                <asp:Label ID="addressLabel" runat="server" Text="Address:" />
                <asp:DropDownList ID="addressDropDownList" runat="server" CssClass="form-control">
                    <asp:ListItem>Please select...</asp:ListItem>
                    <asp:ListItem>Address 1</asp:ListItem>
                    <asp:ListItem>Address 2</asp:ListItem>
                    <asp:ListItem>Address 3</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="addressRequired" runat="server" ControlToValidate="addressDropDownList"
                    InitialValue="Please select..." ErrorMessage="Address is required." CssClass="alert-danger" />
            </div>

            <asp:Button ID="btnNext" runat="server" Text="Next" class="btn btn-primary" OnClick="btnNext_Click" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
