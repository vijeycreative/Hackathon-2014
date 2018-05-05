using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Online_Doctor
{
    public partial class DataViewer : System.Web.UI.Page
    {
        string sCausesID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["CausesID"] != null)
                sCausesID = Request.QueryString["CausesID"].ToString();

            if (!IsPostBack)
            {
                GetData();
            }
        }

        protected void GetData()
        {
            Online_Doctor.Connectivity sData = new Online_Doctor.Connectivity();

            SqlDataReader dr = sData.GetCausesInfo(sCausesID);
            if (dr.HasRows)
            {
                dr.Read();
                lblCauses.Text = dr[1].ToString();
                lblDescription.Text = dr[2].ToString();
                lblSymptoms1.Text = dr[3].ToString();
                lblTest1.Text = dr[4].ToString();
                lblTest2.Text = dr[5].ToString();
                lblTest3.Text = dr[6].ToString();
                lblTreatment.Text = dr[7].ToString();
            }
            dr.Close();
        }
    }
}