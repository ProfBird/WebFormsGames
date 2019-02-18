<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body onload="load()">
    <form id="form1" style="float: left" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        <scripts> 
            <asp:ScriptReference Path="Scripts/jquery-1.4.1.min.js" />
        </scripts>
    </asp:ScriptManager>
    <div style="width: 600px">
            <asp:Table Style="float: left" ID="tblGrid" runat="server">
                <asp:TableRow ID="Row0" runat="server">
                    <asp:TableCell ID="Cell0" runat="server" BorderStyle="Solid" BorderColor="Black" BorderWidth="3">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:ImageButton ID="ImageButton0" runat="server" ImageUrl="img/Blank.png" OnClick="ImageButton_Click" />
                        </ContentTemplate>
                        </asp:UpdatePanel>
                    </asp:TableCell>
                    <asp:TableCell ID="TableCell1" runat="server" BorderStyle="Solid" BorderColor="Black" BorderWidth="3">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img/Blank.png" OnClick="ImageButton_Click" />
                        </ContentTemplate>
                        </asp:UpdatePanel>
                    </asp:TableCell>
                    <asp:TableCell ID="TableCell2" runat="server" BorderStyle="Solid" BorderColor="Black" BorderWidth="3">
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                         <ContentTemplate>
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="img/Blank.png" OnClick="ImageButton_Click" />
                        </ContentTemplate>
                        </asp:UpdatePanel>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow1" runat="server">
                    <asp:TableCell ID="TableCell3" runat="server" BorderStyle="Solid" BorderColor="Black" BorderWidth="3">
                        <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="img/Blank.png" OnClick="ImageButton_Click" />
                        </ContentTemplate>
                        </asp:UpdatePanel>
                    </asp:TableCell>
                    <asp:TableCell ID="TableCell4" runat="server" BorderStyle="Solid" BorderColor="Black" BorderWidth="3">
                        <asp:UpdatePanel ID="UpdatePanel5" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="img/Blank.png" OnClick="ImageButton_Click" />
                        </ContentTemplate>
                        </asp:UpdatePanel>
                    </asp:TableCell>
                    <asp:TableCell ID="TableCell5" runat="server" BorderStyle="Solid" BorderColor="Black" BorderWidth="3">
                        <asp:UpdatePanel ID="UpdatePanel6" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="img/Blank.png" OnClick="ImageButton_Click" />
                        </ContentTemplate>
                        </asp:UpdatePanel>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow2" runat="server">
                    <asp:TableCell ID="TableCell6" runat="server" BorderStyle="Solid" BorderColor="Black" BorderWidth="3">
                        <asp:UpdatePanel ID="UpdatePanel9" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="img/Blank.png" OnClick="ImageButton_Click" />
                        </ContentTemplate>
                        </asp:UpdatePanel>
                    </asp:TableCell>
                    <asp:TableCell ID="TableCell7" runat="server" BorderStyle="Solid" BorderColor="Black" BorderWidth="3">
                        <asp:UpdatePanel ID="UpdatePanel7" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="img/Blank.png" OnClick="ImageButton_Click" />
                        </ContentTemplate>
                        </asp:UpdatePanel>
                    </asp:TableCell>
                    <asp:TableCell ID="TableCell8" runat="server" BorderStyle="Solid" BorderColor="Black" BorderWidth="3">
                         <asp:UpdatePanel ID="UpdatePanel8" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="img/Blank.png" OnClick="ImageButton_Click" />
                        </ContentTemplate>
                        </asp:UpdatePanel>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <script type="text/javascript">
                 function TurnCallback(result)
                {
                    $get("lblTurn").value = "Click to place an " + result; // $get is the ASP.NET version of getElementById
                }

                function GetTurn() 
                {
                    PageMethods.GetTurn(TurnCallback);
                }

                function TurnCountCallback(result) 
                {
                    $get("lblTurnCount").innerHTML = "Turn number " + result;
                }

                function GetTurnCount()
                {
                    PageMethods.GetTurnCount(TurnCountCallback);
                }

                function AnimateMessage()
                {
                    $(function ()
                    {
                        $('#lblMessage:contains("You")')
                        .css('color', 'red')
                        .animate({ fontSize: '32px' }, 1000)
                        .animate({ fontSize: '16px' }, 2000)
                        $('#lblMessage:contains("Won")').css('color', 'green');
                    });
                }

                // This is called because we put onload="load()" in the body tag
                function load()
                {
                    // Register functions that will be called whenever an update panel finishes its update
                    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(GetTurn);
                    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(GetTurnCount);
                    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(AnimateMessage);
                }

                $(function () {$('#lblMessage').css('color', 'yellow')});
            </script>

            <asp:UpdatePanel ID="UpdatePanel11" runat="server">
            <ContentTemplate>
                <asp:TextBox ID="lblTurn" runat="server">Turn</asp:TextBox> 
                <br />
                <asp:Label ID="lblTurnCount" runat="server" Text="Turn Count"></asp:Label>
                <br />
                <asp:Label ID="lblMessage" runat="server" ViewStateMode="Disabled">Ready</asp:Label>
                <br />
                <br />
                <asp:Button ID="btnNewGame" runat="server" onclick="btnNewGame_Click" 
                    Text="New Game" />
            </ContentTemplate>
            </asp:UpdatePanel>

    </div>
    </form>
</body>
</html>
