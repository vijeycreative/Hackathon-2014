using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;
using System.Data.SqlClient;

namespace Online_Doctor
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void symptombutton_Click(object sender, EventArgs e)
        {
            AppView.ActiveViewIndex = 1;
        }

        protected void docbutton_Click(object sender, EventArgs e)
        {
            AppView.ActiveViewIndex = 2;
        }

        protected void facbutton_Click(object sender, EventArgs e)
        {
            AppView.ActiveViewIndex = 3;
        }

        protected void medbutton_Click(object sender, EventArgs e)
        {
            AppView.ActiveViewIndex = 4;
        }

        protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
        {
            //This is the image click function for the male front.
            string malefrontregionname = e.PostBackValue;
            switch (e.PostBackValue)
            {
                case "Head":
                    partlabel.Text = "Symptoms Of The Head";
                    SystemListBox.Visible = true;               
                    break;

                case "Neck":
                    partlabel.Text = "Symptoms Of The Neck";
                    SystemListBox.Visible = true; 
                    break;

                case "Chest":
                    partlabel.Text = "Symptoms Of The Chest";
                    SystemListBox.Visible = true; 
                    break;

                case "Stomach":
                    partlabel.Text = "Symptoms Of The Stomach";
                    SystemListBox.Visible = true; 
                    break;

                case "RightHand":
                    partlabel.Text = "Symptoms Of The Arm";
                    SystemListBox.Visible = true; 
                    break;

                case "LeftHand":
                    partlabel.Text = "Symptoms Of The Arm";
                    SystemListBox.Visible = true; 
                    break;

                case "LeftPalm":
                    partlabel.Text = "Symptoms Of The Palm";
                    SystemListBox.Visible = true; 
                    break;

                case "RightPalm":
                    partlabel.Text = "Symptoms Of The Palm";
                    SystemListBox.Visible = true; 
                    break;

                case "LeftShoulder":
                    partlabel.Text = "Symptoms Of The Shoulder";
                    SystemListBox.Visible = true; 
                    break;

                case "RightShoulder":
                    partlabel.Text = "Symptoms Of The Shoulder";
                    SystemListBox.Visible = true; 
                    break;

                case "Pelvis":
                    partlabel.Text = "Symptoms Of The Pelvis";
                    SystemListBox.Visible = true; 
                    break;

                case "UpperLeftThigh":
                    partlabel.Text = "Symptoms Of The Hip";
                    SystemListBox.Visible = true; 
                    break;

                case "UpperRightThigh":
                    partlabel.Text = "Symptoms Of The Hip";
                    SystemListBox.Visible = true; 
                    break;

                case "LeftLeg":
                    partlabel.Text = "Symptoms Of The Leg";
                    SystemListBox.Visible = true; 
                    break;

                case "RightLeg":
                    partlabel.Text = "Symptoms Of The Leg";
                    SystemListBox.Visible = true; 
                    break;

                case "LeftFoot":
                    partlabel.Text = "Symptoms Of The Feet";
                    SystemListBox.Visible = true; 
                    break;

                case "RightFoot":
                    partlabel.Text = "Symptoms Of The Feet";
                    SystemListBox.Visible = true; 
                    break;
            }
            Online_Doctor.Connectivity sData = new Online_Doctor.Connectivity();

            SqlDataReader dr = sData.GetBPSymptoms(malefrontregionname);
            if (dr.HasRows)
            {
                SystemListBox.DataSource = dr;
                SystemListBox.DataBind();
            }
            else
            {
                SystemListBox.Items.Clear();
                SystemListBox.Items.Add("No Data Available");
            }
            dr.Close();
        }

        protected void rotatebutton_Click(object sender, EventArgs e)
        {
            //This is the function for human body rotate.
            if (ImageMap1.Visible == true)
            {
                if (ImageMap2.Visible == false)
                {
                    if (ImageMap3.Visible == false)
                    {
                        if (ImageMap4.Visible == false)
                        {
                            ImageMap1.Visible = false;
                            ImageMap2.Visible = true;
                            partlabel.Text = "";
                            SystemListBox.Visible = false; 
                        }
                    }
                }
            }
            else if (ImageMap2.Visible == true)
            {
                if (ImageMap1.Visible == false)
                {
                    if (ImageMap3.Visible == false)
                    {
                        if (ImageMap4.Visible == false)
                        {
                            ImageMap1.Visible = true;
                            ImageMap2.Visible = false;
                            partlabel.Text = "";
                            SystemListBox.Visible = false; 
                        }
                    }
                }
            }
            else if (ImageMap3.Visible == true)
            {
                if (ImageMap1.Visible == false)
                {
                    if (ImageMap2.Visible == false)
                    {
                        ImageMap3.Visible = false;
                        ImageMap4.Visible = true;
                        partlabel.Text = "";
                        SystemListBox.Visible = false; 
                    }
                }
            }
            else if (ImageMap4.Visible == true)
            {
                if (ImageMap3.Visible == false)
                {
                    if (ImageMap1.Visible == false)
                    {
                        if (ImageMap2.Visible == false)
                        {
                            ImageMap3.Visible = true;
                            ImageMap4.Visible = false;
                            partlabel.Text = "";
                            SystemListBox.Visible = false; 
                        }
                    }
                }
            }
            else
            {
            }
        }

        protected void ImageMap2_Click(object sender, ImageMapEventArgs e)
        {
            //This is the image click function for the male back.
            string malebackregionname = e.PostBackValue;
            switch (e.PostBackValue)
            {
                case "BackHead":
                    partlabel.Text = "Symptoms Of The Head";
                    SystemListBox.Visible = true; 
                    break;

                case "BackNeck":
                    partlabel.Text = "Symptoms Of The Neck";
                    SystemListBox.Visible = true; 
                    break;

                case "BackLeftShoulder":
                    partlabel.Text = "Symptoms Of The Shoulder";
                    SystemListBox.Visible = true; 
                    break;

                case "BackRightShoulder":
                    partlabel.Text = "Symptoms Of The Neck";
                    SystemListBox.Visible = true; 
                    break;

                case "BackLeftHand":
                    partlabel.Text = "Symptoms Of The Arm";
                    SystemListBox.Visible = true; 
                    break;

                case "BackRightHand":
                    partlabel.Text = "Symptoms Of The Arm";
                    SystemListBox.Visible = true; 
                    break;

                case "Back":
                    partlabel.Text = "Symptoms Of The Back";
                    SystemListBox.Visible = true; 
                    break;

                case "LowerBack":
                    partlabel.Text = "Symptoms Of The Lower Back";
                    SystemListBox.Visible = true; 
                    break;

                case "Rectum":
                    partlabel.Text = "Symptoms Of The Buttocks/Rectum";
                    SystemListBox.Visible = true; 
                    break;

                case "UpperLeftBackThigh":
                    partlabel.Text = "Symptoms Of The Hip";
                    SystemListBox.Visible = true; 
                    break;

                case "UpperRightBackThigh":
                    partlabel.Text = "Symptoms Of The Hip";
                    SystemListBox.Visible = true; 
                    break;

                case "BackLeftLeg":
                    partlabel.Text = "Symptoms Of The Leg";
                    SystemListBox.Visible = true; 
                    break;

                case "BackRightLeg":
                    partlabel.Text = "Symptoms Of The Leg";
                    SystemListBox.Visible = true; 
                    break;

                case "BackRightFoot":
                    partlabel.Text = "Symptoms Of The Feet";
                    SystemListBox.Visible = true; 
                    break;

                case "BackLeftFoot":
                    partlabel.Text = "Symptoms Of The Feet";
                    SystemListBox.Visible = true; 
                    break;

                case "BackRightPalm":
                    partlabel.Text = "Symptoms Of The Hand";
                    SystemListBox.Visible = true; 
                    break;

                case "BackLeftPalm":
                    partlabel.Text = "Symptoms Of The Hand";
                    SystemListBox.Visible = true; 
                    break;
            }
        }

        protected void changebutton_Click(object sender, EventArgs e)
        {
            //This is the function for change gender.
            if (ImageMap1.Visible == true)
            {
                if (ImageMap2.Visible == false)
                {
                    if (ImageMap3.Visible == false)
                    {
                        if (ImageMap4.Visible == false)
                        {
                            ImageMap1.Visible = false;
                            ImageMap3.Visible = true;
                            partlabel.Text = "";
                        }
                    }
                }
            }
            else if (ImageMap2.Visible == true)
            {
                if (ImageMap1.Visible == false)
                {
                    if (ImageMap3.Visible == false)
                    {
                        if (ImageMap4.Visible == false)
                        {
                            ImageMap2.Visible = false;
                            ImageMap4.Visible = true;
                            partlabel.Text = "";
                        }
                    }
                }
            }
            else if (ImageMap3.Visible == true)
            {
                if (ImageMap4.Visible == false)
                {
                    if (ImageMap2.Visible == false)
                    {
                        if (ImageMap1.Visible == false)
                        {
                            ImageMap3.Visible = false;
                            ImageMap1.Visible = true;
                            partlabel.Text = "";
                        }
                    }
                }
            }
            else if (ImageMap4.Visible == true)
            {
                if (ImageMap3.Visible == false)
                {
                    if (ImageMap1.Visible == false)
                    {
                        if (ImageMap2.Visible == false)
                        {
                            ImageMap4.Visible = false;
                            ImageMap2.Visible = true;
                            partlabel.Text = "";
                        }
                    }
                }
            }
            else
            {
            }
        }

        protected void ImageMap3_Click(object sender, ImageMapEventArgs e)
        {
            //This is the image click function for the female front.
            string femalefrontregionname = e.PostBackValue;
            switch (e.PostBackValue)
            {
                case "FHead":
                    partlabel.Text = "Symptons Of The Head";
                    SystemListBox.Visible = true; 
                    break;
                case "FNeck":
                    partlabel.Text = "Symptons Of The Neck";
                    SystemListBox.Visible = true; 
                    break;
                case "FLeftShoulder":
                    partlabel.Text = "Symptons Of The Shoulder";
                    SystemListBox.Visible = true; 
                    break;
                case "FRightShoulder":
                    partlabel.Text = "Symptons Of The Shoulder";
                    SystemListBox.Visible = true; 
                    break;
                case "FChest":
                    partlabel.Text = "Symptons Of The Chest";
                    SystemListBox.Visible = true; 
                    break;
                case "FStomach":
                    partlabel.Text = "Symptons Of The Stomach";
                    SystemListBox.Visible = true; 
                    break;
                case "FPelvis":
                    partlabel.Text = "Symptons Of The Pelvis";
                    SystemListBox.Visible = true; 
                    break;
                case "FLeftArm":
                    partlabel.Text = "Symptons Of The Arm";
                    SystemListBox.Visible = true; 
                    break;
                case "FRightArm":
                    partlabel.Text = "Symptoms Of The Arm";
                    SystemListBox.Visible = true; 
                    break;
                case "FLeftHip":
                    partlabel.Text = "Symptoms Of The Hip";
                    SystemListBox.Visible = true; 
                    break;
                case "FRightHip":
                    partlabel.Text = "Symptoms Of The Hip";
                    SystemListBox.Visible = true; 
                    break;
                case "FRightHand":
                    partlabel.Text = "Symptoms Of The Hand";
                    SystemListBox.Visible = true; 
                    break;
                case "FLeftHand":
                    partlabel.Text = "Symptoms Of The Hand";
                    SystemListBox.Visible = true; 
                    break;
                case "FLeftFoot":
                    partlabel.Text = "Symptoms Of The Feet";
                    SystemListBox.Visible = true; 
                    break;
                case "FRightFoot":
                    partlabel.Text = "Symptoms Of The Feet";
                    SystemListBox.Visible = true; 
                    break;
                case "FRightLeg":
                    partlabel.Text = "Symptoms Of The Leg";
                    SystemListBox.Visible = true; 
                    break;
                case "FLeftLeg":
                    partlabel.Text = "Symptoms Of The Leg";
                    SystemListBox.Visible = true; 
                    break;
            }
        }

        protected void ImageMap4_Click(object sender, ImageMapEventArgs e)
        {
            //This is the imageclick function for female back.
            string femalebackregionname = e.PostBackValue;
            switch (e.PostBackValue)
            {
                case "FBackHead":
                    partlabel.Text = "Symptoms Of The Head";
                    SystemListBox.Visible = true; 
                    break;
                case "FBackNeck":
                    partlabel.Text = "Symptoms Of The Neck";
                    SystemListBox.Visible = true; 
                    break;
                case "FBackLeftShoulder":
                    partlabel.Text = "Symptoms Of The Shoulder";
                    SystemListBox.Visible = true; 
                    break;
                case "FBackRightShoulder":
                    partlabel.Text = "Symptoms Of The Shoulder";
                    SystemListBox.Visible = true; 
                    break;
                case "FUpperBack":
                    partlabel.Text = "Symptoms Of The Upperback";
                    SystemListBox.Visible = true; 
                    break;
                case "FLowerBack":
                    partlabel.Text = "Symptoms Of The Lowerback";
                    SystemListBox.Visible = true; 
                    break;
                case "FRectum":
                    partlabel.Text = "Symptoms Of The Buttocks/Rectum";
                    SystemListBox.Visible = true; 
                    break;
                case "FBackLeftArm":
                    partlabel.Text = "Symptoms Of The Arm";
                    SystemListBox.Visible = true; 
                    break;
                case "FBackRightArm":
                    partlabel.Text = "Symptoms Of The Arm";
                    SystemListBox.Visible = true; 
                    break;
                case "FBackLeftHip":
                    partlabel.Text = "Symptoms Of The Hip";
                    SystemListBox.Visible = true; 
                    break;
                case "FBackRightHip":
                    partlabel.Text = "Symptoms Of The Hip";
                    SystemListBox.Visible = true; 
                    break;
                case "FBackRightHand":
                    partlabel.Text = "Symptoms Of The Hand";
                    SystemListBox.Visible = true; 
                    break;
                case "FBackLeftHand":
                    partlabel.Text = "Symptoms Of The Hand";
                    SystemListBox.Visible = true; 
                    break;
                case "FBackLeftFoot":
                    partlabel.Text = "Symptoms Of The Feet";
                    SystemListBox.Visible = true; 
                    break;
                case "FBackRightFoot":
                    partlabel.Text = "Symptoms Of The Feet";
                    SystemListBox.Visible = true; 
                    break;
                case "FBackRightLeg":
                    partlabel.Text = "Symptoms Of The Leg";
                    SystemListBox.Visible = true; 
                    break;
                case "FBackLeftLeg":
                    partlabel.Text = "Symptoms Of The Leg";
                    SystemListBox.Visible = true; 
                    break;
            }
        }

        protected void Docspllistbox_SelectedIndexChanged(object sender, EventArgs e)
        {
            string curItem = Docspllistbox.SelectedItem.ToString();

            if (curItem == "Cardiology")
            {
                CardioDoclist.Visible = true;
                raddoclistbox.Visible = false;
                entdoclistbox.Visible = false;
                peddoclistbox.Visible = false;
                alldoclistbox.Visible = false;
                dendoclistbox.Visible = false;
                derdoclistbox.Visible = false;
                gendoclistbox.Visible = false;
                nepdoclistbox.Visible = false;
                neurodoclistbox.Visible = false;
                plasdoclistbox.Visible = false;
                vasdoclistbox.Visible = false;
                puldoclistbox.Visible = false;
                psydoclistbox.Visible = false;
                doclistlabel.Visible = true;
            }

            else if (curItem == "Radiology")
            {

                CardioDoclist.Visible = false;
                raddoclistbox.Visible = true;
                entdoclistbox.Visible = false;
                peddoclistbox.Visible = false;
                alldoclistbox.Visible = false;
                dendoclistbox.Visible = false;
                derdoclistbox.Visible = false;
                gendoclistbox.Visible = false;
                nepdoclistbox.Visible = false;
                neurodoclistbox.Visible = false;
                plasdoclistbox.Visible = false;
                vasdoclistbox.Visible = false;
                puldoclistbox.Visible = false;
                psydoclistbox.Visible = false;
                doclistlabel.Visible = true;
            }
            else if (curItem == "Ear Nose and Throat")
            {
                CardioDoclist.Visible = false;
                raddoclistbox.Visible = false;
                entdoclistbox.Visible = true;
                peddoclistbox.Visible = false;
                alldoclistbox.Visible = false;
                dendoclistbox.Visible = false;
                derdoclistbox.Visible = false;
                gendoclistbox.Visible = false;
                nepdoclistbox.Visible = false;
                neurodoclistbox.Visible = false;
                plasdoclistbox.Visible = false;
                vasdoclistbox.Visible = false;
                puldoclistbox.Visible = false;
                psydoclistbox.Visible = false;
                doclistlabel.Visible = true;
            }
            else if (curItem == "Pediatrician")
            {
                CardioDoclist.Visible = false;
                raddoclistbox.Visible = false;
                entdoclistbox.Visible = false;
                peddoclistbox.Visible = true;
                alldoclistbox.Visible = false;
                dendoclistbox.Visible = false;
                derdoclistbox.Visible = false;
                gendoclistbox.Visible = false;
                nepdoclistbox.Visible = false;
                neurodoclistbox.Visible = false;
                plasdoclistbox.Visible = false;
                vasdoclistbox.Visible = false;
                puldoclistbox.Visible = false;
                psydoclistbox.Visible = false;
                doclistlabel.Visible = true;
            }
            else if (curItem == "Allergy and Immunology")
            {
                CardioDoclist.Visible = false;
                raddoclistbox.Visible = false;
                entdoclistbox.Visible = false;
                peddoclistbox.Visible = false;
                alldoclistbox.Visible = true;
                dendoclistbox.Visible = false;
                derdoclistbox.Visible = false;
                gendoclistbox.Visible = false;
                nepdoclistbox.Visible = false;
                neurodoclistbox.Visible = false;
                plasdoclistbox.Visible = false;
                vasdoclistbox.Visible = false;
                puldoclistbox.Visible = false;
                psydoclistbox.Visible = false;
                doclistlabel.Visible = true;
            }
            else if (curItem == "Dentistry")
            {
                CardioDoclist.Visible = false;
                raddoclistbox.Visible = false;
                entdoclistbox.Visible = false;
                peddoclistbox.Visible = false;
                alldoclistbox.Visible = false;
                dendoclistbox.Visible = true;
                derdoclistbox.Visible = false;
                gendoclistbox.Visible = false;
                nepdoclistbox.Visible = false;
                neurodoclistbox.Visible = false;
                plasdoclistbox.Visible = false;
                vasdoclistbox.Visible = false;
                puldoclistbox.Visible = false;
                psydoclistbox.Visible = false;
                doclistlabel.Visible = true;
            }
            else if (curItem == "Dermatology")
            {
                CardioDoclist.Visible = false;
                raddoclistbox.Visible = false;
                entdoclistbox.Visible = false;
                peddoclistbox.Visible = false;
                alldoclistbox.Visible = false;
                dendoclistbox.Visible = false;
                derdoclistbox.Visible = true;
                gendoclistbox.Visible = false;
                nepdoclistbox.Visible = false;
                neurodoclistbox.Visible = false;
                plasdoclistbox.Visible = false;
                vasdoclistbox.Visible = false;
                puldoclistbox.Visible = false;
                psydoclistbox.Visible = false;
                doclistlabel.Visible = true;
            }
            else if (curItem == "General Surgery")
            {
                CardioDoclist.Visible = false;
                raddoclistbox.Visible = false;
                entdoclistbox.Visible = false;
                peddoclistbox.Visible = false;
                alldoclistbox.Visible = false;
                dendoclistbox.Visible = false;
                derdoclistbox.Visible = false;
                gendoclistbox.Visible = true;
                nepdoclistbox.Visible = false;
                neurodoclistbox.Visible = false;
                plasdoclistbox.Visible = false;
                vasdoclistbox.Visible = false;
                puldoclistbox.Visible = false;
                psydoclistbox.Visible = false;
                doclistlabel.Visible = true;
            }
            else if (curItem == "Nephrology")
            {
                CardioDoclist.Visible = false;
                raddoclistbox.Visible = false;
                entdoclistbox.Visible = false;
                peddoclistbox.Visible = false;
                alldoclistbox.Visible = false;
                dendoclistbox.Visible = false;
                derdoclistbox.Visible = false;
                gendoclistbox.Visible = false;
                nepdoclistbox.Visible = true;
                neurodoclistbox.Visible = false;
                plasdoclistbox.Visible = false;
                vasdoclistbox.Visible = false;
                puldoclistbox.Visible = false;
                psydoclistbox.Visible = false;
                doclistlabel.Visible = true;
            }
            else if (curItem == "Neurosurgery")
            {
                CardioDoclist.Visible = false;
                raddoclistbox.Visible = false;
                entdoclistbox.Visible = false;
                peddoclistbox.Visible = false;
                alldoclistbox.Visible = false;
                dendoclistbox.Visible = false;
                derdoclistbox.Visible = false;
                gendoclistbox.Visible = false;
                nepdoclistbox.Visible = false;
                neurodoclistbox.Visible = true;
                plasdoclistbox.Visible = false;
                vasdoclistbox.Visible = false;
                puldoclistbox.Visible = false;
                psydoclistbox.Visible = false;
                doclistlabel.Visible = true;
            }
            else if (curItem == "Plastic Surgery")
            {
                CardioDoclist.Visible = false;
                raddoclistbox.Visible = false;
                entdoclistbox.Visible = false;
                peddoclistbox.Visible = false;
                alldoclistbox.Visible = false;
                dendoclistbox.Visible = false;
                derdoclistbox.Visible = false;
                gendoclistbox.Visible = false;
                nepdoclistbox.Visible = false;
                neurodoclistbox.Visible = false;
                plasdoclistbox.Visible = true;
                vasdoclistbox.Visible = false;
                puldoclistbox.Visible = false;
                psydoclistbox.Visible = false;
                doclistlabel.Visible = true;
            }
            else if (curItem == "Vascular Surgery")
            {
                CardioDoclist.Visible = false;
                raddoclistbox.Visible = false;
                entdoclistbox.Visible = false;
                peddoclistbox.Visible = false;
                alldoclistbox.Visible = false;
                dendoclistbox.Visible = false;
                derdoclistbox.Visible = false;
                gendoclistbox.Visible = false;
                nepdoclistbox.Visible = false;
                neurodoclistbox.Visible = false;
                plasdoclistbox.Visible = false;
                vasdoclistbox.Visible = true;
                puldoclistbox.Visible = false;
                psydoclistbox.Visible = false;
                doclistlabel.Visible = true;
            }
            else if (curItem == "Pulmonology")
            {
                CardioDoclist.Visible = false;
                raddoclistbox.Visible = false;
                entdoclistbox.Visible = false;
                peddoclistbox.Visible = false;
                alldoclistbox.Visible = false;
                dendoclistbox.Visible = false;
                derdoclistbox.Visible = false;
                gendoclistbox.Visible = false;
                nepdoclistbox.Visible = false;
                neurodoclistbox.Visible = false;
                plasdoclistbox.Visible = false;
                vasdoclistbox.Visible = false;
                puldoclistbox.Visible = true;
                psydoclistbox.Visible = false;
                doclistlabel.Visible = true;
            }
            else if (curItem == "Psychiatry")
            {
                CardioDoclist.Visible = false;
                raddoclistbox.Visible = false;
                entdoclistbox.Visible = false;
                peddoclistbox.Visible = false;
                alldoclistbox.Visible = false;
                dendoclistbox.Visible = false;
                derdoclistbox.Visible = false;
                gendoclistbox.Visible = false;
                nepdoclistbox.Visible = false;
                neurodoclistbox.Visible = false;
                plasdoclistbox.Visible = false;
                vasdoclistbox.Visible = false;
                puldoclistbox.Visible = false;
                psydoclistbox.Visible = true;
                doclistlabel.Visible = true;
            }
        }

        protected void SystemListBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            //This is the listbox index change function for the human body symptom.
            CausesListBox.Visible = true;
            Online_Doctor.Connectivity sData = new Online_Doctor.Connectivity();

            SqlDataReader dr = sData.GetSymptomCauses(SystemListBox.SelectedValue.ToString());
            if (dr.HasRows)
            {
                CausesListBox.DataSource = dr;
                CausesListBox.DataBind();
            }
            else
            {
                CausesListBox.Items.Clear();
                CausesListBox.Items.Add("No Data Available");
            }
            dr.Close();
            causeslabel.Text = SystemListBox.SelectedValue.ToString();
        }

        protected void CardioDoclist_SelectedIndexChanged(object sender, EventArgs e)
        {
            DocInfoPan.Visible = true;
            string docname = CardioDoclist.SelectedItem.ToString();
            string curItem = Docspllistbox.SelectedItem.ToString();
            DocNameDyn.Text = docname;
            SplDyn.Text = curItem;
        }

        protected void BkAppBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Book Appointment.aspx");
        }

        protected void ConDocBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact Doctor.aspx");
        }

        protected void LocDocBtn_Click(object sender, EventArgs e)
        {

        }

        protected void raddoclistbox_SelectedIndexChanged(object sender, EventArgs e)
        {
            DocInfoPan.Visible = true;
            string docname = raddoclistbox.SelectedItem.ToString();
            string curItem = Docspllistbox.SelectedItem.ToString();
            DocNameDyn.Text = docname;
            SplDyn.Text = curItem;
        }

        protected void entdoclistbox_SelectedIndexChanged(object sender, EventArgs e)
        {
            DocInfoPan.Visible = true;
            string docname = entdoclistbox.SelectedItem.ToString();
            string curItem = Docspllistbox.SelectedItem.ToString();
            DocNameDyn.Text = docname;
            SplDyn.Text = curItem;
        }

        protected void peddoclistbox_SelectedIndexChanged(object sender, EventArgs e)
        {
            DocInfoPan.Visible = true;
            string docname = peddoclistbox.SelectedItem.ToString();
            string curItem = Docspllistbox.SelectedItem.ToString();
            DocNameDyn.Text = docname;
            SplDyn.Text = curItem;
        }

        protected void alldoclistbox_SelectedIndexChanged(object sender, EventArgs e)
        {
            DocInfoPan.Visible = true;
            string docname = alldoclistbox.SelectedItem.ToString();
            string curItem = Docspllistbox.SelectedItem.ToString();
            DocNameDyn.Text = docname;
            SplDyn.Text = curItem;
        }

        protected void dendoclistbox_SelectedIndexChanged(object sender, EventArgs e)
        {
            DocInfoPan.Visible = true;
            string docname = dendoclistbox.SelectedItem.ToString();
            string curItem = Docspllistbox.SelectedItem.ToString();
            DocNameDyn.Text = docname;
            SplDyn.Text = curItem;
        }

        protected void derdoclistbox_SelectedIndexChanged(object sender, EventArgs e)
        {
            DocInfoPan.Visible = true;
            string docname = derdoclistbox.SelectedItem.ToString();
            string curItem = Docspllistbox.SelectedItem.ToString();
            DocNameDyn.Text = docname;
            SplDyn.Text = curItem;
        }

        protected void gendoclistbox_SelectedIndexChanged(object sender, EventArgs e)
        {
            DocInfoPan.Visible = true;
            string docname = gendoclistbox.SelectedItem.ToString();
            string curItem = Docspllistbox.SelectedItem.ToString();
            DocNameDyn.Text = docname;
            SplDyn.Text = curItem;
        }

        protected void nepdoclistbox_SelectedIndexChanged(object sender, EventArgs e)
        {
            DocInfoPan.Visible = true;
            string docname = nepdoclistbox.SelectedItem.ToString();
            string curItem = Docspllistbox.SelectedItem.ToString();
            DocNameDyn.Text = docname;
            SplDyn.Text = curItem;
        }

        protected void neurodoclistbox_SelectedIndexChanged(object sender, EventArgs e)
        {
            DocInfoPan.Visible = true;
            string docname = neurodoclistbox.SelectedItem.ToString();
            string curItem = Docspllistbox.SelectedItem.ToString();
            DocNameDyn.Text = docname;
            SplDyn.Text = curItem;
        }

        protected void plasdoclistbox_SelectedIndexChanged(object sender, EventArgs e)
        {
            DocInfoPan.Visible = true;
            string docname = plasdoclistbox.SelectedItem.ToString();
            string curItem = Docspllistbox.SelectedItem.ToString();
            DocNameDyn.Text = docname;
            SplDyn.Text = curItem;
        }

        protected void vasdoclistbox_SelectedIndexChanged(object sender, EventArgs e)
        {
            DocInfoPan.Visible = true;
            string docname = vasdoclistbox.SelectedItem.ToString();
            string curItem = Docspllistbox.SelectedItem.ToString();
            DocNameDyn.Text = docname;
            SplDyn.Text = curItem;
        }

        protected void puldoclistbox_SelectedIndexChanged(object sender, EventArgs e)
        {
            DocInfoPan.Visible = true;
            string docname = puldoclistbox.SelectedItem.ToString();
            string curItem = Docspllistbox.SelectedItem.ToString();
            DocNameDyn.Text = docname;
            SplDyn.Text = curItem;
        }

        protected void psydoclistbox_SelectedIndexChanged(object sender, EventArgs e)
        {
            DocInfoPan.Visible = true;
            string docname = psydoclistbox.SelectedItem.ToString();
            string curItem = Docspllistbox.SelectedItem.ToString();
            DocNameDyn.Text = docname;
            SplDyn.Text = curItem;
        }

        protected void CausesListBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sCausesID = CausesListBox.SelectedValue.ToString();
            Response.Redirect("DataViewer.aspx?CausesID="+sCausesID);
        } 

        
    }
}