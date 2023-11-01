<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/registration-steps.Master" AutoEventWireup="true" CodeBehind="Step2.aspx.cs" Inherits="Multi_Step_Registration.Forms.Step2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Step 2: Account Setup</h2>
        <div id="accountSetupForm" runat="server">
            <div class="form-group">
                <asp:Label ID="usernameLabel" runat="server" Text="User Name:" />
                <asp:TextBox ID="usernameTextBox" runat="server" class="form-control" />
                <small class="form-text text-muted">Should be alphanumeric and at least 6 characters long</small>
                <asp:RequiredFieldValidator ID="usernameRequired" runat="server" ControlToValidate="usernameTextBox"
                    ErrorMessage="Username is required." CssClass="alert-danger" />
                <asp:RegularExpressionValidator ID="usernameRegex" runat="server" ControlToValidate="usernameTextBox" CssClass="alert-danger"
                    ValidationExpression="^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}$" ErrorMessage="Username should be alphanumeric and at least 6 characters long." />
            </div>

            <div class="form-group">
                <asp:Label ID="passwordLabel" runat="server" Text="Password:" />
                <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password" CssClass="form-control" />
                <small class="form-text text-muted">Should be at least 8 characters long with a mix of letters, numbers, and special characters</small>
                <div class="form-check">
                    <input type="checkbox" id="showPasswordCheckBox" runat="server" onclick="togglePasswordVisibility()" class="form-check-input" />
                    <label class="form-check-label" for="showPasswordCheckBox">Show Password</label>
                </div>
                <asp:RequiredFieldValidator ID="passwordRequired" runat="server" ControlToValidate="passwordTextBox"
                    ErrorMessage="Password is required." CssClass="alert-danger" />
                <asp:RegularExpressionValidator ID="passwordRegex" runat="server" ControlToValidate="passwordTextBox" CssClass="alert-danger"
                    ValidationExpression="^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$" ErrorMessage="Password should be at least 8 characters long with a mix of letters, numbers, and special characters." />
            </div>

            <div class="form-group">
                <asp:Label ID="confirmPasswordLabel" runat="server" Text="Confirm Password:" />
                <asp:TextBox ID="confirmPasswordTextBox" runat="server" TextMode="Password" CssClass="form-control" />
                <small class="form-text text-muted">Must match the Password field</small>
                <div class="form-check">
                    <input type="checkbox" id="showConfirmPasswordCheckBox" runat="server" onclick="toggleConfirmPasswordVisibility()" class="form-check-input" />
                    <label class="form-check-label" for="showConfirmPasswordCheckBox">Show Password</label>
                </div>
                <asp:CompareValidator ID="passwordCompare" runat="server" ControlToCompare="passwordTextBox"
                    ControlToValidate="confirmPasswordTextBox"
                    ErrorMessage="Passwords do not match." CssClass="alert-danger" />
            </div>

            <asp:Button ID="previousButton" runat="server" Text="Previous" PostBackUrl="./Step1.aspx" CausesValidation="false" CssClass="btn btn-secondary" OnClick="previousButton_Click" />
            <asp:Button ID="nextButton" runat="server" Text="Next" CssClass="btn btn-primary" OnClick="nextButton_Click" />

            <script type="text/javascript">
                function togglePasswordVisibility() {
                    var passwordInput = document.getElementById('<%= passwordTextBox.ClientID %>');
                    if (passwordInput.type === "password") {
                        passwordInput.type = "text";
                    } else {
                        passwordInput.type = "password";
                    }
                }

                function toggleConfirmPasswordVisibility() {
                    var confirmPasswordInput = document.getElementById('<%= confirmPasswordTextBox.ClientID %>');
                    if (confirmPasswordInput.type === "password") {
                        confirmPasswordInput.type = "text";
                    } else {
                        confirmPasswordInput.type = "password";
                    }
                }
            </script>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
