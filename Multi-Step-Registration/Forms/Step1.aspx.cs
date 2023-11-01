using System;
using System.Web.UI;

namespace Multi_Step_Registration.Forms
{
    public partial class Step1 : Page
    {
        protected void Page_Load(object sender, EventArgs e) { }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Session["FullName"] = fullNameTextBox.Text;
                Session["Address"] = addressDropDownList.SelectedValue;

                Response.Redirect("./Step2.aspx");
            }
        }
    }
}
