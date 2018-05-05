<%@ Page Title="App Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="App.aspx.cs" Inherits="Online_Doctor.About" %>
     
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        #ListDoc
        {
            position: relative;
        }
        #doclist
        {
            z-index: 1;
            left: 278px;
            top: 74px;
            position: absolute;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
     <script src="Scripts/jquery.js" type="text/javascript"></script>
     <script src="Scripts/jquery.maphilight.js" type="text/javascript"></script>
     <script src="Scripts/jquery.maphilight.js" type="text/javascript"></script>
     <script type ="text/javascript">
         $(function () {
             $('.mapHiLight').maphilight({ fade: false });
         });
     </script>
   
    <h2>
        &nbsp;<asp:Panel ID="Panel2" runat="server" Direction="LeftToRight" 
            HorizontalAlign="Center" 
        
        style="z-index: 1; left: 32px; top: 214px; position: absolute; height: 100%; width: 209px">
        <asp:Button ID="symptombutton" runat="server" Text="Symptoms" class="Button"
            onclick="symptombutton_Click" Width="200px"  />
        <br />
        <br />
        <asp:Button ID="docbutton" runat="server" Text="Doctors" class="Button"
                onclick="docbutton_Click" Width="200px"  />
        <br />
        <br />
        <asp:Button ID="facbutton" runat="server" Text="Facilities" class="Button"
                onclick="facbutton_Click" Width="200px" />
        <br />
        <br />
        <asp:Button ID="medbutton" runat="server" Text="Medications" class="Button"
                onclick="medbutton_Click" Width="200px" />
        <br />
        <br />
        <br />
        </asp:Panel>
        </h2>
    <asp:Panel ID="Panel1" runat="server" Direction="LeftToRight" Height="100%" 
        HorizontalAlign="Justify" 
        style="z-index: 1; left: 339px; top: 116px; position: absolute; height: 100%; width: 1400px" 
        Width="1400px">
        <asp:MultiView ID="AppView" runat="server" ActiveViewIndex="0">
            <asp:View ID="welctab" runat="server"><br />
                <asp:Label runat = "server" ID = "title" CssClass="label" Text="It&#39;s Time To Take Charge Of Your Own Health"></asp:Label><br /><br />
                <asp:Label ID="Stflabel" runat="server" 
        Text="With the new symptom checker, learn possible causes of multiple related symptoms, locate 
        Doctors, and book appointments." CssClass="label2"></asp:Label><br /><br />
        <asp:Label runat = "server" ID = "Label1" CssClass="label" Text="Check Symptoms"></asp:Label><br /><br />
        <asp:Label runat = "server" ID = "Label2" CssClass="label2" Text="Look up your symptoms and learn about possible causes and treatments. Search the symptom directory by selecting a body part or browse from an alphabetical list."></asp:Label><br /><br />
        <asp:Label runat = "server" ID = "Label3" CssClass="label" Text="Learn about possible causes"></asp:Label><br /><br />
        <asp:Label runat = "server" ID = "Label4" CssClass="label2" Text="Research specific diseases and conditions to learn about treatment options, procedures, costs and common complications. All medical content in iQuack is created by physicians and reviewed by Harvard Medical School."></asp:Label><br /><br />
        <asp:Label runat = "server" ID = "Label5" CssClass="label" Text="Determine appropriate action"></asp:Label><br /><br />
        <asp:Label runat = "server" ID = "Label6" CssClass="label2" Text="Find out if a trip to the ER is necessary, or if an urgent care center or retail clinic might be a more appropriate, and a more cost effective alternative. Learn what specialists are appropriate for your condition."></asp:Label><br /><br />
        <asp:Label runat = "server" ID = "Label7" CssClass="label" Text="Locate and compare nearby care options"></asp:Label><br /><br />
        <asp:Label runat = "server" ID = "Label8" CssClass="label2" Text="Find nearby hospital ER’s, physicians, urgent care centers, retail clinics, pharmacies, outpatient clinics and more. Check hospital ER wait times, sort physicians by distance or ratings, and see facilities and offices on maps."></asp:Label><br /><br />







            </asp:View>
            <asp:View ID="symtab" runat="server">
            <h2>Avatar</h2>
                &nbsp;<asp:Panel ID="Panel3" runat="server">
                <asp:ImageMap ID="ImageMap1" runat="server" Height="800px" Width="400px" 
                    ImageUrl="~/Images/Avatars/Male Front.png" onclick="ImageMap1_Click" CssClass="mapHiLight">
                <asp:PolygonHotSpot PostBackValue = "Head"
                AlternateText ="Head"
                Coordinates = "199,106,189,104,171,85,169,75,166,74,158,57,158,44,166,49,165,21,178,7,189,1,199,0,216,3,226,13,235,27,234,49,239,44,240,60,235,73,230,74,229,84,217,95,210,104,199,106"
                Hotspotmode= "PostBack" />
                <asp:PolygonHotSpot PostBackValue = "Neck"
                AlternateText ="Neck"
                Coordinates = "199,106,189,104,172,85,173,113,153,124,136,131,186,141,212,142,264,133,248,126,227,114,227,86,215,99,207,105,199,106"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "Chest"
                AlternateText ="Chest"
                Coordinates = "138,138,119,184,108,192,148,220,252,220,289,194,264,137,212,148,186,148,138,138"
                Hotspotmode= "Postback"/>
                 <asp:PolygonHotSpot PostBackValue = "Stomach"
                AlternateText ="Stomach"
                Coordinates = "124,209,125,232,126,247,133,271,138,290,138,309,134,330,134,345,198,364,265,345,264,326,261,306,261,287,267,267,272,246,274,227,274,210,245,223,200,223,154,223"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "RightHand"
                AlternateText ="Right Hand"
                Coordinates = "92,204,83,256,62,294,36,368,58,381,99,317,114,282,114,260,123,213"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "LeftHand"
                AlternateText ="Left Hand"
                Coordinates = "278,214,280,231,288,267,286,279,296,307,310,333,326,356,339,375,359,361,357,354,350,336,345,320,340,294,323,267,315,251,313,235,311,211,308,199"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "RightPalm"
                AlternateText ="Right Palm"
                Coordinates = "32,373,15,387,0,406,6,409,19,397,19,446,22,447,26,451,32,450,36,449,43,438,51,430,59,403,59,383"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "LeftPalm"
                AlternateText ="Left Palm"
                Coordinates = "342,379,340,391,343,409,352,436,356,437,364,450,368,449,374,451,380,447,381,443,381,398,391,408,396,410,399,407,392,399,380,380,373,375,365,370"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "RightShoulder"
                AlternateText ="Right Shoulder"
                Coordinates = "126,135,129,168,104,193,90,197,95,160,109,141,122,135"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "LeftShoulder"
                AlternateText ="Left Shoulder"
                Coordinates = "272,133,278,160,295,196,311,195,303,158,283,137,272,133"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "Pelvis"
                AlternateText ="Pelvis"
                Coordinates = "161,359,161,421,152,434,243,430,234,422,242,356,161,359"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "UpperRightThigh"
                AlternateText ="Right Hip"
                Coordinates = "133,351,163,371,153,417,153,438,123,434,124,414,124,396,125,375,133,351"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "UpperLeftThigh"
                AlternateText ="Left Hip"
                Coordinates = "266,343,275,381,277,434,231,434,238,359,266,343"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "RightLeg"
                AlternateText ="Right Leg"
                Coordinates = "123,436,130,498,144,553,148,595,137,645,142,670,153,713,163,750,187,750,184,702,190,659,189,638,183,614,193,548,191,495,196,436,123,436"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "LeftLeg"
                AlternateText ="Left Leg"
                Coordinates = "202,436,207,478,207,562,216,614,209,650,212,671,215,744,236,744,258,669,262,643,252,602,254,557,269,499,276,433,202,436"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "RightFoot"
                AlternateText ="Right Feet"
                Coordinates = "165,761,163,772,143,788,143,797,190,796,189,763"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "LeftFoot"
                AlternateText ="Left Feet"
                Coordinates = "210,761,208,796,258,796,254,787,237,773,235,762"
                Hotspotmode= "Postback"/>
               </asp:ImageMap>
                <asp:Button ID="rotatebutton" runat="server" onclick="rotatebutton_Click" Width="100px" 
                    Text="Rotate" 
                        style="z-index: 1; left: 465px; top: 688px; position: absolute" />
                    <asp:Button ID="changebutton" runat="server" Text="Change Gender" 
                    Width="150px" onclick="changebutton_Click" 
                        style="z-index: 1; left: 623px; top: 690px; position: absolute" />
                <asp:Label ID="partlabel" runat="server" ViewStateMode="Enabled" BorderStyle="None" 
                        Font-Size="X-Large" Height="50px" 
                        style="z-index: 1; left: 453px; top: 13px; position: absolute" 
                        Width="500px"></asp:Label>
                        <asp:Label ID="causeslabel" runat="server" ViewStateMode="Enabled" BorderStyle="None" 
                        Font-Size="X-Large" Height="50px" 
                        style="z-index: 1; left: 844px; top: 15px; position: absolute" 
                        Width="500px"></asp:Label>
                    <asp:ListBox ID="SystemListBox" runat="server" 
                        style="z-index: 1; left: 458px; top: 92px; position: absolute; height: 569px; width: 321px" 
                        Visible="False" DataValueField="ID" DataTextField="Symptoms" 
                        onselectedindexchanged="SystemListBox_SelectedIndexChanged" 
                        AutoPostBack="true" ></asp:ListBox>
                        <asp:ListBox ID="CausesListBox" runat="server" 
                        style="z-index: 1; left: 849px; top: 94px; position: absolute; height: 563px; width: 321px" 
                        Visible="False" DataValueField="ID" DataTextField="Causes"
                        onselectedindexchanged="CausesListBox_SelectedIndexChanged" 
                        AutoPostBack="true" ></asp:ListBox>
                <br />
                <asp:ImageMap ID="ImageMap2" runat="server" Height="800px" 
                    ImageUrl="~/Images/Avatars/Male Back.png" Visible="False" Width="400px" 
                    onclick="ImageMap2_Click" CssClass="mapHiLight">
                    <asp:PolygonHotSpot PostBackValue="BackHead"
                    AlternateText = "Head"
                    Coordinates = "174,105,171,74,166,73,160,58,159,45,167,51,165,37,167,22,177,9,199,0,221,8,231,18,234,32,232,50,238,45,240,52,236,66,233,74,229,72,227,84,226,103"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="BackNeck"
                    AlternateText = "Neck"
                    Coordinates = "173,107,225,107,262,129,139,129,173,107"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="BackLeftShoulder"
                    AlternateText = "Left Shoulder"
                    Coordinates = "93,192,93,168,103,142,132,129,135,171,106,194,93,192"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="BackRightShoulder"
                    AlternateText = "Right Shoulder"
                    Coordinates = "265,128,287,135,303,159,305,183,282,187,267,172,265,128"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="BackLeftHand"
                    AlternateText = "Left Hand"
                    Coordinates = "96,197,87,218,83,255,72,274,62,293,55,322,43,349,38,361,59,377,82,346,100,319,109,291,114,283,113,271,120,244,125,229,125,221"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="BackRightHand"
                    AlternateText = "Right Hand"
                    Coordinates = "277,182,273,223,284,269,300,321,325,356,341,376,362,362,334,284,313,243,306,200,305,193"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="BackRightPalm"
                    AlternateText = "Right Palm"
                    Coordinates = "344,383,341,398,353,436,358,438,366,450,374,452,380,450,383,441,381,399,395,410,399,407,385,387,379,378,368,372"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="BackLeftPalm"
                    AlternateText = "Left Palm"
                    Coordinates = "30,373,21,378,10,394,0,406,3,410,17,398,18,422,18,445,21,447,26,451,30,448,34,450,35,449,41,436,46,436,52,419,56,401,58,388,57,380"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="Back"
                    AlternateText = "Back"
                    Coordinates = "136,128,262,129,271,217,265,252,134,255,125,215,136,128"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="LowerBack"
                    AlternateText = "Lower Back"
                    Coordinates = "134,255,265,255,257,284,264,321,135,322,142,283,134,255"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="Rectum"
                    AlternateText = "Buttock/Rectum"
                    Coordinates = "167,323,232,323,240,391,243,419,222,420,203,413,199,394,194,412,179,420,153,414,161,399,167,323"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="UpperLeftBackThigh"
                    AlternateText = "Back Thigh"
                    Coordinates = "135,328,159,339,157,382,152,413,123,407,127,373,135,328"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="UpperRightBackThigh"
                    AlternateText = "Back Thigh"
                    Coordinates = "264,329,266,348,271,369,273,391,275,412,260,412,250,412,248,392,246,372,247,348,245,331"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="BackLeftLeg"
                    AlternateText = "Left Leg"
                    Coordinates = "124,421,124,448,125,477,133,511,146,559,145,595,137,638,137,649,149,701,160,750,182,749,183,673,188,658,186,636,182,617,180,598,189,578,190,548,189,538,190,496,193,450,193,425"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="BackRightLeg"
                    AlternateText = "Right Leg"
                    Coordinates = "206,424,211,535,210,580,219,598,210,651,216,673,217,741,240,741,261,655,263,636,254,596,253,560,273,484,276,424"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="BackRightFoot"
                    AlternateText = "Right Foot"
                    Coordinates = "213,757,239,755,251,774,266,775,267,780,230,796,217,795,213,770,213,757"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="BackLeftFoot"
                    AlternateText = "Left Foot"
                    Coordinates = "158,763,147,774,131,778,168,796,182,794,187,758"
                    Hotspotmode = "PostBack" />
                </asp:ImageMap>
                <br />
                <asp:ImageMap ID="ImageMap3" runat="server" Height="800px" 
                    ImageUrl="~/Images/Avatars/Female Front.png" Visible="False" Width="400px" 
                    onclick="ImageMap3_Click" CssClass="mapHiLight">
                    <asp:PolygonHotSpot PostBackValue="FHead"
                    AlternateText = "Head"
                    Coordinates = "200,0,236,19,246,58,244,88,221,106,179,106,154,85,153,53,165,17"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FNeck"
                    AlternateText = "Neck"
                    Coordinates = "179,107,178,117,143,132,200,145,255,131,221,117,221,107"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FRightShoulder"
                    AlternateText = "Right Shoulder"
                    Coordinates = "144,133,120,144,106,187,137,204,146,162"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FLeftShoulder"
                    AlternateText = "Left Shoulder"
                    Coordinates = "256,132,279,143,295,186,263,202,248,160"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FChest"
                    AlternateText = "Chest"
                    Coordinates = "201,146,219,140,248,160,269,189,263,202,257,249,201,249,145,249,138,203,134,188,146,162,181,140"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FStomach"
                    AlternateText = "Stomach"
                    Coordinates = "144,249,201,249,257,249,253,271,253,302,234,311,168,313,147,301"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FPelvis"
                    AlternateText = "Pelvis"
                    Coordinates = "234,311,241,387,203,395,196,395,163,390,168,313,201,314"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FRightArm"
                    AlternateText = "Right Arm"
                    Coordinates = "107,187,138,203,123,247,111,283,93,319,56,379,37,368,60,306,83,266,93,237,107,187"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FLeftArm"
                    AlternateText = "Left Arm"
                    Coordinates = "263,202,295,185,295,202,307,238,318,267,335,293,363,367,345,378,306,315,289,281,277,244"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FRightHip"
                    AlternateText = "Right Hip"
                    Coordinates = "168,313,147,301,125,357,123,389,163,390"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FLeftHip"
                    AlternateText = "Left Hip"
                    Coordinates = "234,311,253,302,275,354,279,384,241,387"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FLeftHand"
                    AlternateText = "Left Palm"
                    Coordinates = "345,378,364,368,371,373,379,379,386,390,395,403,394,408,388,407,381,398,383,444,375,452,366,449,361,437,356,435,345,399"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FRightHand" 
                    AlternateText = "Right Palm"
                    Coordinates = "56,378,37,367,25,375,17,383,3,404,8,409,19,396,16,445,23,452,33,450,38,438,46,430,56,395"/>
                    <asp:PolygonHotSpot PostBackValue="FRightLeg"
                    AlternateText = "Right Leg"
                    Coordinates = "122,371,121,437,140,529,148,590,140,664,156,722,164,751,184,745,189,664,182,611,196,408"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FLeftLeg"
                    AlternateText = "Left Leg"
                    Coordinates = "204,400,209,466,209,518,211,558,215,590,216,620,212,653,214,678,216,701,217,729,213,754,235,756,240,732,248,706,258,677,261,655,256,620,251,589,253,558,262,521,272,470,277,447,277,401"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FRightFoot"
                    AlternateText = "Right Feet"
                    Coordinates = "188,769,189,794,178,798,145,796,145,786,156,780,164,771"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FLeftFoot"
                    AlternateText = "Left Feet"
                    Coordinates = "212,757,212,770,212,783,211,794,215,795,225,797,226,793,229,797,236,796,242,797,245,794,247,797,253,795,255,789,245,781,236,771,235,762,235,757"
                    Hotspotmode = "PostBack" />
                </asp:ImageMap>
                <br />
                <asp:ImageMap ID="ImageMap4" runat="server" Height="800px" 
                    ImageUrl="~/Images/Avatars/Female Back.png" Visible="False" Width="400px" 
                    onclick="ImageMap4_Click" CssClass="mapHiLight">
                    <asp:PolygonHotSpot PostBackValue="FBackHead"
                    AlternateText = "Head"
                    Coordinates = "198,1,181,3,176,5,168,12,161,26,157,37,153,53,150,71,156,90,168,100,183,106,197,109,213,106,228,100,241,89,246,72,245,55,240,36,234,20,223,8,208,2"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FBackLeftShoulder"
                    AlternateText = "Left Shoulder"
                    Coordinates = "120,135,135,128,135,191,101,190"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FBackRightShoulder"
                    AlternateText = "Right Shoulder"
                    Coordinates = "264,127,262,190,297,192,277,135"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FBackLeftHand"
                    AlternateText = "Left Hand"
                    Coordinates = "100,195,85,262,65,297,34,365,52,377,97,309,113,267,134,207"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FBackRightHand"
                    AlternateText = "Right Hand"
                    Coordinates = "297,188,308,252,337,310,362,364,344,375,301,311,278,256,263,204"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FBackLeftPalm"
                    AlternateText = "Left Palm"
                    Coordinates = "30,369,15,381,2,399,8,402,17,392,11,438,18,445,25,442,33,429,36,430,50,394,51,380"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FBackRightPalm"
                    AlternateText = "Right Palm"
                    Coordinates = "347,380,351,402,362,431,366,432,373,444,380,445,386,438,380,392,393,402,396,398,387,388,379,375,366,368"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FBackNeck"
                    AlternateText = "Neck"
                    Coordinates = "171,112,143,127,257,128,224,111"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FUpperBack"
                    AlternateText = "Upper Back"
                    Coordinates = "141,128,141,150,137,170,134,192,136,211,143,237,254,238,259,215,262,197,260,179,259,161,254,147,252,132,251,125,243,131,228,136,214,139,202,140,191,140,173,140,163,138,157,135,149,131,142,128"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FLowerBack"
                    AlternateText = "Lower Back"
                    Coordinates = "144,243,149,254,150,270,149,283,145,302,161,302,175,300,192,299,206,299,216,300,230,301,242,304,255,307,249,295,246,281,246,268,248,258,252,244"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FBackLeftHip"
                    AlternateText = "Left Hip"
                    Coordinates = "137,319,125,352,119,408,148,416,150,369,154,331"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FBackRightHip"
                    AlternateText = "Right Hip"
                    Coordinates = "260,320,244,322,239,344,241,394,246,413,277,411,274,370,269,341"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FRectum"
                    AlternateText = "Buttock/Rectum"
                    Coordinates = "198,317,214,318,226,316,227,317,234,325,237,335,239,350,242,365,244,382,245,401,243,413,238,417,225,417,214,413,207,408,202,402,201,398,197,399,194,405,189,410,181,413,170,417,160,417,148,413,147,399,147,388,149,374,151,361,153,348,156,335,158,325,170,318,183,318,"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FBackLeftLeg"
                    AlternateText = "Left Leg"
                    Coordinates = "120,418,126,479,141,531,145,578,140,623,136,630,136,660,151,716,158,755,181,755,178,717,181,671,180,626,181,582,185,531,191,432"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FBackRightLeg"
                    AlternateText = "RightLeg"
                    Coordinates = "205,432,211,484,211,534,215,580,217,627,216,672,219,720,216,756,240,757,244,726,256,674,258,627,253,581,254,538,267,487,278,423"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FBackLeftFoot"
                    AlternateText = "Left Foot"
                    Coordinates = "157,759,146,773,134,776,135,780,163,794,179,792,179,782,182,761"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FBackRightFoot"
                    AlternateText = "Right Foot"
                    Coordinates = "215,761,215,777,218,792,237,793,263,779,247,771,240,760"
                    Hotspotmode = "PostBack" />
                </asp:ImageMap>
                </asp:Panel>
            </asp:View>
            <asp:View ID="doctab" runat="server">
            <h2>Please feel free to look at our list of Doctors.</h2>
            <br/>
            <h3>Browse by specialization:</h3>
            <asp:Label ID="doclistlabel" runat="server"
                    BorderStyle="None" 
                    style="z-index: 1; left: 268px; top: 70px; position: absolute" Visible="False">List of Available Doctors:</asp:Label>
                <asp:ListBox ID="Docspllistbox" runat="server" Height="340px" Width="250px" 
                    onselectedindexchanged="Docspllistbox_SelectedIndexChanged" 
                    AutoPostBack="true">
                <asp:ListItem Text="Cardiology"/>
                <asp:ListItem Text="Radiology"/>
                <asp:ListItem Text="Ear Nose and Throat"/>
                <asp:ListItem Text="Pediatrician"/>
                <asp:ListItem Text="Allergy and Immunology"/>
                <asp:ListItem Text="Dentistry"/>
                <asp:ListItem Text="Dermatology"/>
                <asp:ListItem Text="General Surgery"/>
                <asp:ListItem Text="Nephrology"/>
                <asp:ListItem Text="Neurosurgery"/>
                <asp:ListItem Text="Plastic Surgery"/>
                <asp:ListItem Text="Vascular Surgery"/>
                <asp:ListItem Text="Pulmonology"/>
                <asp:ListItem Text="Psychiatry"/>
                </asp:ListBox>
                &nbsp;<asp:ListBox ID="CardioDoclist" runat="server" Visible="False" Height="340px" 
                    Width="250px" onselectedindexchanged="CardioDoclist_SelectedIndexChanged" 
                    AutoPostBack="true">
                <asp:ListItem Text="Dr.Jason"/>
                <asp:ListItem Text="Dr.Peter"/>
                <asp:ListItem Text="Dr.James"/>
                <asp:ListItem Text="Dr.Jones"/>
                </asp:ListBox>
                <asp:ListBox ID="raddoclistbox" runat="server" Visible="False" Height="340px" 
                    Width="250px" onselectedindexchanged="raddoclistbox_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Text="Dr.Vinay"/>
                <asp:ListItem Text="Dr.Adam"/>
                <asp:ListItem Text="Dr.Ian"/>
                <asp:ListItem Text="Dr.Sean"/>
                <asp:ListItem Text="Dr.Plott"/>
                </asp:ListBox>
                <asp:ListBox ID="entdoclistbox" runat="server" Visible="False" Height="340px" 
                    Width="250px" onselectedindexchanged="entdoclistbox_SelectedIndexChanged" AutoPostBack="true"> 
                <asp:ListItem Text="Dr.Rooney"/>
                <asp:ListItem Text="Dr.Wayne"/>
                <asp:ListItem Text="Dr.Michael"/>
                <asp:ListItem Text="Dr.Carrick"/>
                <asp:ListItem Text="Dr.Phil"/>
                </asp:ListBox>
                <asp:ListBox ID="peddoclistbox" runat="server" Visible="False" Height="340px" 
                    Width="250px" onselectedindexchanged="peddoclistbox_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Text="Dr.Rio"/>
                <asp:ListItem Text="Dr.Ferdinand"/>
                <asp:ListItem Text="Dr.Sachin"/>
                <asp:ListItem Text="Dr.Rahul"/>
                <asp:ListItem Text="Dr.Jhonny"/>
                </asp:ListBox>
                <asp:ListBox ID="alldoclistbox" runat="server" Visible="False" Height="340px" 
                    Width="250px" onselectedindexchanged="alldoclistbox_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Text="Dr.Evans"/>
                <asp:ListItem Text="Dr.Patrice"/>
                <asp:ListItem Text="Dr.Evra"/>
                <asp:ListItem Text="Dr.Vidic"/>
                <asp:ListItem Text="Dr.Tom"/>
                </asp:ListBox>
                <asp:ListBox ID="dendoclistbox" runat="server" Visible="False" Height="340px" 
                    Width="250px" onselectedindexchanged="dendoclistbox_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Text="Dr.Cleverley"/>
                <asp:ListItem Text="Dr.Danny"/>
                <asp:ListItem Text="Dr.Welbeck"/>
                <asp:ListItem Text="Dr.RVP"/>
                <asp:ListItem Text="Dr.Anderson"/>
                </asp:ListBox>
                <asp:ListBox ID="derdoclistbox" runat="server" Visible="False" Height="340px" 
                    Width="250px" onselectedindexchanged="derdoclistbox_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Text="Dr.Keane"/>
                <asp:ListItem Text="Dr.Paul"/>
                <asp:ListItem Text="Dr.Pogba"/>
                <asp:ListItem Text="Dr.Scholes"/>
                <asp:ListItem Text="Dr.Giggs"/>
                </asp:ListBox>
                <asp:ListBox ID="gendoclistbox" runat="server" Visible="False" Height="340px" 
                    Width="250px" onselectedindexchanged="gendoclistbox_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Text="Dr.Ronaldo"/>
                <asp:ListItem Text="Dr.Cristiano"/>
                <asp:ListItem Text="Dr.Lionel"/>
                <asp:ListItem Text="Dr.Messi"/>
                <asp:ListItem Text="Dr.Frank"/>
                </asp:ListBox>
                <asp:ListBox ID="nepdoclistbox" runat="server" Visible="False" Height="340px" 
                    Width="250px" onselectedindexchanged="nepdoclistbox_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Text="Dr.Ribery"/>
                <asp:ListItem Text="Dr.Sneijder"/>
                <asp:ListItem Text="Dr.Wesley"/>
                <asp:ListItem Text="Dr.Ron"/>
                <asp:ListItem Text="Dr.Ravel"/>
                </asp:ListBox>
                <asp:ListBox ID="neurodoclistbox" runat="server" Visible="False" Height="340px" 
                    Width="250px" 
                    onselectedindexchanged="neurodoclistbox_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Text="Dr.Morrison"/>
                <asp:ListItem Text="Dr.Ferguson"/>
                <asp:ListItem Text="Dr.Beckham"/>
                <asp:ListItem Text="Dr.Dave"/>
                <asp:ListItem Text="Dr.David"/>
                </asp:ListBox>
                <asp:ListBox ID="plasdoclistbox" runat="server" Visible="False" Height="340px" 
                    Width="250px" onselectedindexchanged="plasdoclistbox_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Text="Dr.Edison"/>
                <asp:ListItem Text="Dr.Zlatan"/>
                <asp:ListItem Text="Dr.Fabio"/>
                <asp:ListItem Text="Dr.Rafael"/>
                <asp:ListItem Text="Dr.Chris"/>
                </asp:ListBox>
                <asp:ListBox ID="vasdoclistbox" runat="server" Visible="False" Height="340px" 
                    Width="250px" onselectedindexchanged="vasdoclistbox_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Text="Dr.Shinji"/>
                <asp:ListItem Text="Dr.Kagawa"/>
                <asp:ListItem Text="Dr.Smalling"/>
                <asp:ListItem Text="Dr.Mesut"/>
                <asp:ListItem Text="Dr.Ozil"/>
                </asp:ListBox>
                <asp:ListBox ID="puldoclistbox" runat="server" Visible="False" Height="340px" 
                    Width="250px" onselectedindexchanged="puldoclistbox_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Text="Dr.Aaron"/>
                <asp:ListItem Text="Dr.Ramsey"/>
                <asp:ListItem Text="Dr.Oliver"/>
                <asp:ListItem Text="Dr.Giroud"/>
                <asp:ListItem Text="Dr.Diaby"/>
                </asp:ListBox>
                <asp:ListBox ID="psydoclistbox" runat="server" Visible="False" Height="340px" 
                    Width="250px" onselectedindexchanged="psydoclistbox_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Text="Dr.Robben"/>
                <asp:ListItem Text="Dr.Arjen"/>
                <asp:ListItem Text="Dr.Manzudokic"/>
                <asp:ListItem Text="Dr.Steven"/>
                <asp:ListItem Text="Dr.Kaka"/>
                </asp:ListBox>
                <asp:Panel ID="DocInfoPan" runat="server" Width="500px" 
                    BorderStyle="Groove" 
                    style="z-index: 1; left: 514px; top: 91px; position: absolute; height: 337px; width: 681px" 
                    Visible="False">
                    <asp:Label ID="DocNameStat" runat="server" Text="Name : "></asp:Label>
                    &nbsp;&nbsp;<asp:Label ID="DocNameDyn" runat="server"></asp:Label>
                    <br /><br />
                    <asp:Label ID="SplStat" runat="server" Text="Specialization : "></asp:Label>&nbsp;&nbsp;
                    <asp:Label ID="SplDyn" runat="server"></asp:Label>
                    <br /><br />
                    <asp:Label ID="InstStat" runat="server" 
                        Text="Institution (Hospital or Clinic) : "></asp:Label><br /><br />
                    <asp:Label ID="ContStat" runat="server" Text="Contact No : "></asp:Label><br /><br />
                    <asp:Button ID="ConDocBtn" runat="server" Text="Contact Doctor" Width="150px" 
                        onclick="ConDocBtn_Click" /> &nbsp;&nbsp;
                    <asp:Button ID="BkAppBtn" runat="server" Text="Book Appointment" 
                        Width="150px" onclick="BkAppBtn_Click" /> &nbsp;&nbsp;
                    <asp:Button ID="LocDocBtn" runat="server" Text="Locate Doctor" Width="150px" 
                        onclick="LocDocBtn_Click" />
                </asp:Panel>
            </asp:View>
            <asp:View ID="factab" runat="server">
            <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
            <h2>Please feel free to look at our list of available Facilities nearby.</h2>
            <div id="map-canvas" style="width:900px; height:500px; z-index:25;">
            </div>
            <div style=" position:relative; width:100px;"><div id="Div1">
                    <img src="Images/hospitalicon.gif" />
                    <p>- Hospitals</p>
                </div> 
                <div id="Div2" style="z-index:25; height:50px; width:100px;">
                    <img src="Images/pharmacyicon.gif" />
                    <p>- Pharmacies</p>
                </div>
                </div>
            <script src="https://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script>
            <script type="text/javascript" src="Scripts/GooglemapsAPI.js"></script>
            
            </asp:View>
            <asp:View ID="medtab" runat="server">
            <p>Here is a list of available medicines.</p>
            </asp:View>
        </asp:MultiView>
        
        <br />
        <br />
        </asp:Panel>
    </asp:Content>
