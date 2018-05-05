using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Doctor
{
    public partial class RegisterUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserButton_Click(object sender, EventArgs e)
        {
            Online_Doctor.Connectivity sData = new Online_Doctor.Connectivity();
            int Result = sData.InsertUser(UserName.Text.Trim(), Email.Text.Trim(), drpUserType.SelectedValue, Password.Text.Trim());
            if (Result == 0)
            {
                pnlRegister.Visible = false;
                pnlSuccess.Visible = true;
                lblMessage.Visible = false;
            }
            else
            {
                lblMessage.Visible = true;               
            }
        }
    }
}