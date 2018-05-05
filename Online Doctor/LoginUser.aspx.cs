using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Online_Doctor
{
    public partial class LoginUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            Online_Doctor.Connectivity sData = new Online_Doctor.Connectivity();
            SqlDataReader sdr = sData.GetLogin(UserName.Text, Password.Text);
            if (sdr.HasRows)
            {
                lblMessage.Visible = false;
                sdr.Read();
                if (sdr[3].ToString() == "Doctor")
                    Response.Redirect("ClientDashBoard.aspx", false);
                else if (sdr[3].ToString() == "Client")
                    Response.Redirect("DoctorDashBoard.aspx", false);
            }
            else
            {
                lblMessage.Visible = true;
            }
        }
    }
}