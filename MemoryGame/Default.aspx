<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Memory Game</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table ID="Table1" runat="server" style="float:left" BackColor="#666699" BorderColor="#666699" 
            BorderStyle="Solid" BorderWidth="2px" ViewStateMode="Disabled">
            <asp:TableRow ID="Row0" runat="server">
                <asp:TableCell ID="TableCell0" runat="server">
                    <asp:imagebutton runat="server" onclick="ImageButton_Click" ID="Imagebutton0" ImageUrl="Images/back.png" ></asp:imagebutton>
                </asp:TableCell>
                <asp:TableCell ID="TableCell1" runat="server">
                    <asp:imagebutton runat="server" onclick="ImageButton_Click" ID="Imagebutton1" ImageUrl="Images/back.png" ></asp:imagebutton>
                </asp:TableCell>
                <asp:TableCell ID="TableCell2" runat="server">
                    <asp:imagebutton runat="server" onclick="ImageButton_Click" ID="Imagebutton2" ImageUrl="Images/back.png" ></asp:imagebutton>
                </asp:TableCell>
                <asp:TableCell ID="TableCell3" runat="server">
                    <asp:imagebutton runat="server" onclick="ImageButton_Click" ID="Imagebutton3" ImageUrl="Images/back.png" ></asp:imagebutton>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow1" runat="server">
                <asp:TableCell ID="TableCell4" runat="server">
                    <asp:imagebutton runat="server" onclick="ImageButton_Click" ID="Imagebutton4" ImageUrl="Images/back.png" ></asp:imagebutton>
                </asp:TableCell>
                <asp:TableCell ID="TableCell5" runat="server">
                    <asp:imagebutton runat="server" onclick="ImageButton_Click" ID="Imagebutton5" ImageUrl="Images/back.png" ></asp:imagebutton>
                </asp:TableCell>
                <asp:TableCell ID="TableCell6" runat="server">
                    <asp:imagebutton runat="server" onclick="ImageButton_Click" ID="Imagebutton6" ImageUrl="Images/back.png" ></asp:imagebutton>
                </asp:TableCell>
                <asp:TableCell ID="TableCell7" runat="server">
                    <asp:imagebutton runat="server" onclick="ImageButton_Click" ID="Imagebutton7" ImageUrl="Images/back.png" ></asp:imagebutton>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow2" runat="server">
                <asp:TableCell ID="TableCell8" runat="server">
                    <asp:imagebutton runat="server" onclick="ImageButton_Click" ID="Imagebutton8" ImageUrl="Images/back.png" ></asp:imagebutton>
                </asp:TableCell>
                <asp:TableCell ID="TableCell9" runat="server">
                    <asp:imagebutton runat="server" onclick="ImageButton_Click" ID="Imagebutton9" ImageUrl="Images/back.png" ></asp:imagebutton>
                </asp:TableCell>
                <asp:TableCell ID="TableCell10" runat="server">
                    <asp:imagebutton runat="server" onclick="ImageButton_Click" ID="Imagebutton10" ImageUrl="Images/back.png" ></asp:imagebutton>
                </asp:TableCell>
                <asp:TableCell ID="TableCell11" runat="server">
                    <asp:imagebutton runat="server" onclick="ImageButton_Click" ID="Imagebutton11" ImageUrl="Images/back.png" ></asp:imagebutton>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow3" runat="server">
                <asp:TableCell ID="TableCell12" runat="server">
                    <asp:imagebutton runat="server" onclick="ImageButton_Click" ID="Imagebutton12" ImageUrl="Images/back.png" ></asp:imagebutton>
                </asp:TableCell>
                <asp:TableCell ID="TableCell13" runat="server">
                    <asp:imagebutton runat="server" onclick="ImageButton_Click" ID="Imagebutton13" ImageUrl="Images/back.png" ></asp:imagebutton>
                </asp:TableCell>
                <asp:TableCell ID="TableCell14" runat="server">
                    <asp:imagebutton runat="server" onclick="ImageButton_Click" ID="Imagebutton14" ImageUrl="Images/back.png" ></asp:imagebutton>
                </asp:TableCell>
                <asp:TableCell ID="TableCell15" runat="server">
                    <asp:imagebutton runat="server" onclick="ImageButton_Click" ID="Imagebutton15" ImageUrl="Images/back.png" ></asp:imagebutton>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:Button ID="btnNew" style="float: left; margin:10px" runat="server" 
            Text="New Game" onclick="btnNew_Click" />
    </div>
    </form>
</body>
</html>
