<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/registration-steps.Master" AutoEventWireup="true" CodeBehind="Step3.aspx.cs" Inherits="Multi_Step_Registration.Forms.Step3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Step 3: Confirmation</h2>
        <div id="confirmationForm" runat="server">
            <div class="form-group">
                <asp:Label ID="summaryLabel" runat="server" Text="Summary:" />
                <asp:Literal ID="summaryLiteral" runat="server"></asp:Literal>
                <p id="summary"></p>
            </div>

            <asp:Button ID="btnPrevious" runat="server" Text="Previous" PostBackUrl="./Step2.aspx" CssClass="btn btn-secondary" OnClick="btnPrevious_Click" />
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="submitButton_Click" CssClass="btn btn-primary" OnClientClick="showModal(); return false;" />

            <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Confirmation</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-body">
                            <p><i class='fa fa-check-circle'></i>Your registration is successful! <i class="bi bi-check"></i></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
