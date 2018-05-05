using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Doctor
{
    public partial class Contact_Doctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubBtn_Click(object sender, EventArgs e)
        {
            ConPan.Visible = false;
            SuccPan.Visible = true;
        }
    }
}