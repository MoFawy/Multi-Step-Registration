using System;
using System.Web.UI;

namespace Multi_Step_Registration.Forms
{
    public partial class Step2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { }

        protected void nextButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Session["Username"] = usernameTextBox.Text;
                Session["Password"] = passwordTextBox.Text;

                Response.Redirect("./Step3.aspx");
            }
        }

        protected void previousButton_Click(object sender, EventArgs e) { }
    }
}
