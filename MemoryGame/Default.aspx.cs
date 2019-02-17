using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Memory memGame;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Matches"] == null)
        {
            memGame = new Memory();
            Session["Matches"] = memGame.Matches;
            Session["Birds"] = memGame.Birds;
        }
        else
        {
            memGame = new Memory( (List<string>)Session["Birds"], (List<bool>)Session["Matches"] );
        }

        ImageButton imgButton;
        for (int i = 0; i < Memory.NUM_BIRDS * 2; i++)
        {
            if (memGame.Matches[i])
            {
                imgButton = (ImageButton)FindControl("imagebutton" + i.ToString());
                imgButton.ImageUrl = "Images/" + memGame.Birds[i] + ".png";
            }
        }

    } 


    protected void ImageButton_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton imgButton = (ImageButton)sender;
        int pictureNum = int.Parse(imgButton.ID.Substring(11));
        imgButton.ImageUrl = "Images/" + memGame.Birds[pictureNum] + ".png";
        if (Session["FirstPic"] == null)                    // first click
        {
            Session["FirstPic"] = pictureNum;
        }
        else                                                // second click
        {
            int firstPic = (int)Session["FirstPic"];

            if (memGame.isMatch(pictureNum, firstPic))
            {
                imgButton = (ImageButton)FindControl("imagebutton" + firstPic.ToString());
                imgButton.ImageUrl = "Images/" + memGame.Birds[firstPic] + ".png";
                memGame.Matches[pictureNum] = true;
                memGame.Matches[firstPic] = true;
                Session["Matches"] = memGame.Matches;
            }
            else
            {
                imgButton.Attributes.Add("onmouseout", "this.src = 'Images/back.png'");
            }
            Session["FirstPic"] = null;
        }
    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < Memory.NUM_BIRDS * 2; i++)
        {
            ImageButton imgButton = (ImageButton)FindControl("imagebutton" + i.ToString());
            imgButton.ImageUrl = "Images/back.png";
        }
            
        Session["Matches"] = null;
    }
}