using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class _Default : System.Web.UI.Page
{
    const string X_IMAGE_URL = "img/X.png";
    const string O_IMAGE_URL = "img/O.png";
    const string BLANK_IMAGE_URL = "img/Blank.png";
    const string TTT_GAME = "gameGrid";
    TicTacToe tttGame;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session[TTT_GAME] == null)
        {
            // create the game object for the first time during this session
            tttGame = new TicTacToe();
            Session[TTT_GAME] = tttGame;
        }
        else
        {
            // If it already exists, get the game object from the session object
            tttGame = (TicTacToe)Session[TTT_GAME];
        }

        if(!IsPostBack)
            UpdateAll();
    }

    [WebMethod]
    public static string GetDate()
    {
        return DateTime.Now.ToString();
    }

    [WebMethod]
    public static string GetTurnCount()
    {
        return ((TicTacToe)HttpContext.Current.Session[TTT_GAME]).TurnCount.ToString();
    }

    [WebMethod]
    public static char GetTurn()
    {
        return ((TicTacToe)HttpContext.Current.Session[TTT_GAME]).GetTurn();
    }

    // Handle click events from the image buttons on the web page
    protected void ImageButton_Click(object sender, ImageClickEventArgs e)
    {
        // Get a reference to the image button that was clicked
        ImageButton imgBtn = ((ImageButton)sender);
        // Get the number of the button that was clicked
        int bNum = int.Parse(imgBtn.ID.Substring(11));

        // Put an X or O in into the GameGrid array 
        int row = bNum / TicTacToe.COLS;    // Get a zero based table row number
        int col = bNum % TicTacToe.COLS;    // Get a zero based table column number
        if (!tttGame.AddMark(row, col))
            lblMessage.Text = "You can't change that!";

        // See if we have a winner
        char winner = tttGame.CheckForWinner();
        if (winner != ' ')
            lblMessage.Text = winner + " Won!";

        UpdateImage(row, col);
      //  ReloadPageData();
    }


    // Update a single ImageButton's image
    private void UpdateImage(int row, int col)
    {
        // Display whose turn it is and the turn number 
        // lblTurn.Text = "Click to place an " + tttGame.GetTurn();
       // lblTurnCount.Text = "Turn number " + tttGame.TurnCount.ToString();

        // Update the display of the game grid on the web page
        ImageButton imgBtn;
        char mark;
        // Get a reference to the image button at this location in the table
        UpdatePanel up = (UpdatePanel)tblGrid.Rows[row].Cells[col].Controls[0];
        imgBtn = (ImageButton)up.ContentTemplateContainer.Controls[1];
        // Put an X or O into the image button based on what's in the GameGrid
        mark = tttGame.GetMark(row, col);
        if (mark == 'X')
            imgBtn.ImageUrl = X_IMAGE_URL;
        else if (mark == 'O')
            imgBtn.ImageUrl = O_IMAGE_URL;
        else
            imgBtn.ImageUrl = BLANK_IMAGE_URL;

        up.Update();
    }


    // Reload the images and values in the controls on the web page
    // We are doing this based on data stored in the TicTacToe object
    // wich is stored in the Session object
    private void UpdateAll()
    {
        // Display whose turn it is and the turn number 
        lblTurn.Text = "Click to place an " + tttGame.GetTurn();
        lblTurnCount.Text = "Turn number " + tttGame.TurnCount.ToString();

        // Update the display of the game grid on the web page
        for (int r = 0; r < TicTacToe.ROWS; r++)
        {
            for (int c = 0; c < TicTacToe.COLS; c++)
            {
                UpdateImage(r, c);
            }
        }
    }
    

    // Reset the game
    protected void btnNewGame_Click(object sender, EventArgs e)
    {
        // create the game grid array for the new game
        tttGame = new TicTacToe();
        Session[TTT_GAME] = tttGame;

        UpdateAll();
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {

    }
}