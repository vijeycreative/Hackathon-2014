<%@ Page Title="App Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="App.aspx.cs" Inherits="Online_Doctor.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        &nbsp;<asp:Panel ID="Panel2" runat="server" Direction="LeftToRight" 
            HorizontalAlign="Center" Width="120px" 
        style="z-index: 1; left: 88px; top: 203px; position: absolute; height: 178px; width: 120px">
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
    <asp:Panel ID="Panel1" runat="server" Direction="LeftToRight" Height="1200px" 
        HorizontalAlign="Justify" 
        style="z-index: 1; left: 339px; top: 116px; position: absolute; height: 3901px; width: 1400px" 
        Width="1400px">
        <asp:MultiView ID="AppView" runat="server" ActiveViewIndex="0">
            <asp:View ID="welctab" runat="server">
                <h2>it&#39;s time to take charge of your own health</h2>
            </asp:View>
            <asp:View ID="symtab" runat="server">
            <h2>Avatar</h2>
                &nbsp;<asp:Panel ID="Panel3" runat="server">
                <asp:ImageMap ID="ImageMap1" runat="server" Height="800px" Width="400px" 
                    ImageUrl="~/Images/Avatars/Male Front.gif" onclick="ImageMap1_Click">
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
                <asp:PolygonHotSpot PostBackValue = "LeftHand"
                AlternateText ="Left Hand"
                Coordinates = "92,204,83,256,62,294,36,368,58,381,99,317,114,282,114,260,123,213"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "RightHand"
                AlternateText ="Right Hand"
                Coordinates = "279,211,288,271,286,282,340,378,361,365,340,296,317,254,308,201"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "LeftPalm"
                AlternateText ="Left Palm"
                Coordinates = "32,373,15,387,0,406,6,409,19,397,19,446,22,447,26,451,32,450,36,449,43,438,51,430,59,403,59,383"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "RightPalm"
                AlternateText ="Right Palm"
                Coordinates = "341,382,341,400,345,416,350,433,358,437,363,449,368,447,373,451,376,446,380,446,380,419,380,398,391,407,396,409,,398,405,389,394,380,380,370,373,365,370"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "LeftShoulder"
                AlternateText ="Left Shoulder"
                Coordinates = "126,135,129,168,104,193,90,197,95,160,109,141,122,135"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "RightShoulder"
                AlternateText ="Right Shoulder"
                Coordinates = "272,133,278,160,295,196,311,195,303,158,283,137,272,133"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "Pelvis"
                AlternateText ="Pelvis"
                Coordinates = "161,359,161,421,152,434,243,430,234,422,242,356,161,359"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "UpperLeftThigh"
                AlternateText ="Left Hip"
                Coordinates = "132,354,124,380,123,418,183,421,170,364,132,354"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "UpperRightThigh"
                AlternateText ="Upper Right Thigh"
                Coordinates = "266,343,275,381,277,434,231,434,238,359,266,343"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "LeftLeg"
                AlternateText ="Left Leg"
                Coordinates = "123,436,130,498,144,553,148,595,137,645,142,670,153,713,163,750,187,750,184,702,190,659,189,638,183,614,193,548,191,495,196,436,123,436"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "RightLeg"
                AlternateText ="Right Leg"
                Coordinates = "202,436,207,478,207,562,216,614,209,650,212,671,215,744,236,744,258,669,262,643,252,602,254,557,269,499,276,433,202,436"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "LeftFoot"
                AlternateText ="Left Foot"
                Coordinates = "165,761,163,772,143,788,143,797,190,796,189,763"
                Hotspotmode= "Postback"/>
                <asp:PolygonHotSpot PostBackValue = "RightFoot"
                AlternateText ="Right Foot"
                Coordinates = "210,761,208,796,258,796,254,787,237,773,235,762"
                Hotspotmode= "Postback"/>
               </asp:ImageMap>
                <asp:Button ID="rotatebutton" runat="server" onclick="rotatebutton_Click" Width="100px" 
                    Text="Rotate" 
                        style="z-index: 1; left: 487px; top: 687px; position: absolute" />
                    <asp:Button ID="changebutton" runat="server" Text="Change Gender" 
                    Width="150px" onclick="changebutton_Click" 
                        style="z-index: 1; left: 641px; top: 685px; position: absolute" />
                <asp:Label ID="partlabel" runat="server" ViewStateMode="Enabled" BorderStyle="None" 
                        Font-Size="X-Large" Height="50px" 
                        style="z-index: 1; left: 479px; top: 177px; position: absolute" Width="500px"></asp:Label>
                <br />
                <asp:ImageMap ID="ImageMap2" runat="server" Height="800px" 
                    ImageUrl="~/Images/Avatars/Male Back.gif" Visible="False" Width="400px" 
                    onclick="ImageMap2_Click">
                    <asp:PolygonHotSpot PostBackValue="BackHead"
                    AlternateText = "Head"
                    Coordinates = "174,108,171,73,167,73,160,57,160,44,169,53,167,25,182,6,198,0,217,6,230,16,234,30,231,51,238,45,241,52,234,72,228,73,226,107"
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
                    Coordinates = "93,203,82,257,59,307,37,363,59,374,105,304,114,283,125,219,93,203"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="BackRightHand"
                    AlternateText = "Right Hand"
                    Coordinates = "273,223,284,269,300,321,325,356,341,376,362,362,334,284,313,243,306,200,273,223"
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
                    Coordinates = "124,424,124,472,135,521,146,569,136,641,155,726,160,758,184,752,182,673,188,648,181,648,181,598,190,561,192,423"
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
                    ImageUrl="~/Images/Avatars/Female Front.gif" Visible="False" Width="400px" 
                    onclick="ImageMap3_Click">
                    <asp:PolygonHotSpot PostBackValue="FHead"
                    AlternateText = "Head"
                    Coordinates = "200,0,236,19,246,58,244,88,221,106,179,106,154,85,153,53,165,17"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FNeck"
                    AlternateText = "Neck"
                    Coordinates = "179,107,178,117,143,132,200,145,255,131,221,117,221,107"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FLeftShoulder"
                    AlternateText = "Left Shoulder"
                    Coordinates = "144,133,120,144,106,187,137,204,146,162"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FRightShoulder"
                    AlternateText = "Right Shoulder"
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
                    <asp:PolygonHotSpot PostBackValue="FLeftArm"
                    AlternateText = "Left Arm"
                    Coordinates = "107,187,138,203,123,247,111,283,93,319,56,379,37,368,60,306,83,266,93,237,107,187"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FRightArm"
                    AlternateText = "Right Arm"
                    Coordinates = "263,202,295,185,295,202,307,238,318,267,335,293,363,367,345,378,306,315,289,281,277,244"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FLeftHip"
                    AlternateText = "Left Hip"
                    Coordinates = "168,313,147,301,125,357,123,389,163,390"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FRightHip"
                    AlternateText = "Right Hip"
                    Coordinates = "234,311,253,302,275,354,279,384,241,387"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FRightHand"
                    AlternateText = "Right Hand"
                    Coordinates = "345,378,364,368,371,373,379,379,386,390,395,403,394,408,388,407,381,398,383,444,375,452,366,449,361,437,356,435,345,399"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FLeftHand" 
                    AlternateText = "Left Hand"
                    Coordinates = "56,378,37,367,25,375,17,383,3,404,8,409,19,396,16,445,23,452,33,450,38,438,46,430,56,395"/>
                    <asp:PolygonHotSpot PostBackValue="FLeftLeg"
                    AlternateText = "Left Leg"
                    Coordinates = "122,371,121,437,140,529,148,590,140,664,156,722,164,751,184,745,189,664,182,611,196,408"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FRightLeg"
                    AlternateText = "Right Leg"
                    Coordinates = "204,400,209,466,209,518,211,558,215,590,216,620,212,653,214,678,216,701,217,729,213,754,235,756,240,732,248,706,258,677,261,655,256,620,251,589,253,558,262,521,272,470,277,447,277,401"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FLeftFoot"
                    AlternateText = "Left Foot"
                    Coordinates = "188,769,189,794,178,798,145,796,145,786,156,780,164,771"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FRightFoot"
                    AlternateText = "Right Foot"
                    Coordinates = "212,757,212,770,212,783,211,794,215,795,225,797,226,793,229,797,236,796,242,797,245,794,247,797,253,795,255,789,245,781,236,771,235,762,235,757"
                    Hotspotmode = "PostBack" />
                </asp:ImageMap>
                <br />
                <asp:ImageMap ID="ImageMap4" runat="server" Height="800px" 
                    ImageUrl="~/Images/Avatars/Female Back.gif" Visible="False" Width="400px" 
                    onclick="ImageMap4_Click">
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
                    Coordinates = "198,131,137,211,148,253,248,257,260,213"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FLowerBack"
                    AlternateText = "Lower Back"
                    Coordinates = "148,254,146,297,140,315,258,316,249,296,247,267"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FBackLeftHip"
                    AlternateText = "Left Hip"
                    Coordinates = "137,319,125,314,119,408,148,416,150,369,154,331"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FBackRightHip"
                    AlternateText = "Right Hip"
                    Coordinates = "260,320,244,322,239,344,241,394,246,413,277,411,274,370,269,341"
                    Hotspotmode = "PostBack" />
                    <asp:PolygonHotSpot PostBackValue="FRectum"
                    AlternateText = "Buttock/Rectum"
                    Coordinates = "153,330,150,369,147,415,192,418,204,419,241,419,239,369,236,332,199,334"
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
            <p>Please feel free to look at our list of Doctors.</p>
            </asp:View>
            <asp:View ID="factab" runat="server">
            <p>Please feel free to look at our list of available Facilities nearby.</p>
            </asp:View>
            <asp:View ID="contab" runat="server">
            <p>Here is a list of conditions that you may refer to.</p>
            </asp:View>
            <asp:View ID="medtab" runat="server">
            <p>Here is a list of available medicines.</p>
            </asp:View>
            <asp:View ID="proctab" runat="server">
            <p>Here is a list of available procedures for different conditions.</p>
            </asp:View>
        </asp:MultiView>
        
        <br />
        <br />
        </asp:Panel>
    </asp:Content>
