using System;
using System.Web;
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
                string currentUrl = HttpContext.Current.Request.Url.AbsoluteUri;
                string nextPageUrl;
                if (currentUrl.Contains("Forms"))
                    nextPageUrl = currentUrl.Replace("Step1.aspx", "Step2.aspx");
                else
                    nextPageUrl = "./Forms/Step2.aspx";

                Response.Redirect(nextPageUrl);
            }
        }
    }
}
