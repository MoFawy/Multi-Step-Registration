using System;

namespace Multi_Step_Registration.Forms
{
    public partial class Step3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load the summary of information
                summaryLiteral.Text =
                    $""
                    + $"<p>Full Name: {Session["FullName"]}</p>"
                    + $"<p>Address: {Session["Address"]}</p>"
                    + $"<p>UserName: {Session["Username"]}</p>";
            }
        }

        protected void btnPrevious_Click(object sender, EventArgs e) { }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Session.Clear();
            }
        }
    }
}
