using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

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

        protected void conbutton_Click(object sender, EventArgs e)
        {
            AppView.ActiveViewIndex = 4;
        }

        protected void medbutton_Click(object sender, EventArgs e)
        {
            AppView.ActiveViewIndex = 5;
        }

        protected void procbutton_Click(object sender, EventArgs e)
        {
            AppView.ActiveViewIndex = 6;
        }

        protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
        {
            string malefrontregionname = e.PostBackValue;
            switch (e.PostBackValue)
            {
                case "Head":
                    partlabel.Text = "Symptoms Of The Head";                     
                    break;

                case "Neck":
                    partlabel.Text = "Symptoms Of The Neck";
                    break;

                case "Chest":
                    partlabel.Text = "Symptoms Of The Chest";
                    break;

                case "Stomach":
                    partlabel.Text = "Symptoms Of The Stomach";
                    break;

                case "LeftHand":
                    partlabel.Text = "Symptoms Of The Left hand.";
                    break;

                case "RightHand":
                    partlabel.Text = "Symptoms Of The Right hand.";
                    break;

                case "LeftPalm":
                    partlabel.Text = "Symptoms Of The Left palm.";
                    break;

                case "RightPalm":
                    partlabel.Text = "Symptoms Of The Right palm.";
                    break;

                case "LeftShoulder":
                    partlabel.Text = "Symptoms Of The Left Shoulder.";
                    break;

                case "RightShoulder":
                    partlabel.Text = "Symptoms Of The Right Shoulder.";
                    break;

                case "Pelvis":
                    partlabel.Text = "Symptoms Of The Pelvis.";
                    break;

                case "UpperLeftThigh":
                    partlabel.Text = "Symptoms Of The Upper Left Thigh.";
                    break;

                case "UpperRightThigh":
                    partlabel.Text = "Symptoms Of The Upper Right Thigh.";
                    break;

                case "LeftLeg":
                    partlabel.Text = "Symptoms Of The Left Leg.";
                    break;

                case "RightLeg":
                    partlabel.Text = "Symptoms Of The Right Leg.";
                    break;

                case "LeftFoot":
                    partlabel.Text = "Symptoms Of The Left Foot.";
                    break;

                case "RightFoot":
                    partlabel.Text = "Symptoms Of The Right Foot.";
                    break;
            }
        }

        protected void rotatebutton_Click(object sender, EventArgs e)
        {
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
            string malebackregionname = e.PostBckValue;
            switch (e.PostBackValue)
            {
                case "BackHead":
                    partlabel.Text = "Symptoms Of The Head.";
                    break;

                case "BackNeck":
                    partlabel.Text = "Hey, you just clicked the rear neck.";
                    break;

                case "BackLeftShoulder":
                    partlabel.Text = "Hey, you just clicked the rear left shoulder.";
                    break;

                case "BackRightShoulder":
                    partlabel.Text = "Hey, you just clicked the rear right shoulder.";
                    break;

                case "BackLeftHand":
                    partlabel.Text = "Hey, you just clicked the rear left hand.";
                    break;

                case "BackRightHand":
                    partlabel.Text = "Hey, you just clicked the rear right hand.";
                    break;

                case "Back":
                    partlabel.Text = "Hey, you just clicked the back.";
                    break;

                case "LowerBack":
                    partlabel.Text = "Hey, you just clicked the lower back.";
                    break;

                case "Rectum":
                    partlabel.Text = "Hey, you just clicked the Buttock.";
                    break;

                case "UpperLeftBackThigh":
                    partlabel.Text = "Hey, you just clicked the upper left rear thigh.";
                    break;

                case "UpperRightBackThigh":
                    partlabel.Text = "Hey, you just clicked the upper right rear thigh.";
                    break;

                case "BackLeftLeg":
                    partlabel.Text = "Hey, you just clicked the rear left leg.";
                    break;

                case "BackRightLeg":
                    partlabel.Text = "Hey, you just clicked the rear left leg.";
                    break;

                case "BackRightFoot":
                    partlabel.Text = "Hey, you just clicked the rear right foot.";
                    break;

                case "BackLeftFoot":
                    partlabel.Text = "Hey, you just clicked the rear left foot.";
                    break;

                case "BackRightPalm":
                    partlabel.Text = "Hey, you just clicked the rear right palm.";
                    break;

                case "BackLeftPalm":
                    partlabel.Text = "Hey, you just clicked the rear left palm.";
                    break;
            }
        }

        protected void changebutton_Click(object sender, EventArgs e)
        {
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
            string femalefrontregionname = e.PostBackValue;
            switch (e.PostBackValue)
            {
                case "FHead":
                    partlabel.Text = "Hey, you just clicked the head.";
                    break;
                case "FNeck":
                    partlabel.Text = "Hey, you just clicked the neck.";
                    break;
                case "FLeftShoulder":
                    partlabel.Text = "Hey, you just clicked the left shoulder.";
                    break;
                case "FRightShoulder":
                    partlabel.Text = "Hey, you just clicked the right shoulder.";
                    break;
                case "FChest":
                    partlabel.Text = "Hey, you just clicked the chest.";
                    break;
                case "FStomach":
                    partlabel.Text = "Hey, you just clicked the stomach.";
                    break;
                case "FPelvis":
                    partlabel.Text = "Hey, you just clicked the pelvis.";
                    break;
                case "FLeftArm":
                    partlabel.Text = "Hey, you just clicked the left arm.";
                    break;
                case "FRightArm":
                    partlabel.Text = "Hey, you just clicked the right arm.";
                    break;
                case "FLeftHip":
                    partlabel.Text = "Hey, you just clicked the left hip.";
                    break;
                case "FRightHip":
                    partlabel.Text = "Hey, you just clicked the right him.";
                    break;
                case "FRightHand":
                    partlabel.Text = "Hey, you just clicked the right hand.";
                    break;
                case "FLeftHand":
                    partlabel.Text = "Hey, you just clicked the left hand.";
                    break;
                case "FLeftFoot":
                    partlabel.Text = "Hey, you just clicked the left foot.";
                    break;
                case "FRightFoot":
                    partlabel.Text = "Hey, you just clicked the right foot.";
                    break;
                case "FRightLeg":
                    partlabel.Text = "Hey, you just clicked the right leg.";
                    break;
                case "FLeftLeg":
                    partlabel.Text = "Hey, you just clicked the left leg.";
                    break;
            }
        }

        protected void ImageMap4_Click(object sender, ImageMapEventArgs e)
        {
            string femalebackregionname = e.PostBackValue;
            switch (e.PostBackValue)
            {
                case "FBackHead":
                    partlabel.Text = "Hey, you just clicked the rear head.";
                    break;
                case "FBackNeck":
                    partlabel.Text = "Hey, you just clicked the rear neck.";
                    break;
                case "FBackLeftShoulder":
                    partlabel.Text = "Hey, you just clicked the left shoulder.";
                    break;
                case "FBackRightShoulder":
                    partlabel.Text = "Hey, you just clicked the right shoulder.";
                    break;
                case "FUpperBack":
                    partlabel.Text = "Hey, you just clicked the upperback.";
                    break;
                case "FLowerBack":
                    partlabel.Text = "Hey, you just clicked the lowerback.";
                    break;
                case "FRectum":
                    partlabel.Text = "Hey, you just clicked the buttocks/rectum.";
                    break;
                case "FBackLeftArm":
                    partlabel.Text = "Hey, you just clicked the left arm.";
                    break;
                case "FBackRightArm":
                    partlabel.Text = "Hey, you just clicked the right arm.";
                    break;
                case "FBackLeftHip":
                    partlabel.Text = "Hey, you just clicked the left hip.";
                    break;
                case "FBackRightHip":
                    partlabel.Text = "Symptoms Of The Right Hip";
                    break;
                case "FBackRightHand":
                    partlabel.Text = "Symptoms Of The Right Hand";
                    break;
                case "FBackLeftHand":
                    partlabel.Text = "Symptoms Of The Left Hand";
                    break;
                case "FBackLeftFoot":
                    partlabel.Text = "Symptoms Of The Left Foot";
                    break;
                case "FBackRightFoot":
                    partlabel.Text = "Symptoms Of The Right Foot";
                    break;
                case "FBackRightLeg":
                    partlabel.Text = "Symptoms Of The Right Leg";
                    break;
                case "FBackLeftLeg":
                    partlabel.Text = "Symptoms Of The Left Leg";
                    break;
            }
        }
    }
}