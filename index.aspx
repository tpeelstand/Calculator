<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Learning ASP.NET | Financial Calculator | Sam's Teach Yourself</title>
    <link rel="stylesheet" href="css/main.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        

        <%-- PRINCIPAL AMOUNT --%>
        <div class="calcContainer">
            <h1>Financial Calculator</h1>

            <span><strong>Principal Amount:</strong></span> 
            <asp:TextBox class="textbox" ID="LoanAmount" runat="server" placeholder=" 250,000"></asp:TextBox>
        </div>

        <%-- INTEREST RATE --%>
        <div class="calcContainer">
            <span><strong>Interest Rate:</strong></span> 
            <asp:TextBox class="textbox" ID="InterestRate" runat="server" placeholder=" percentage"></asp:TextBox>
        </div>

        <%-- MORTGAGE LENGTH  --%>
        <div class="calcContainer">
            <span><strong>Mortgage Length:</strong></span> 
            <asp:TextBox class="textbox" ID="MortgageLength" runat="server" placeholder=" number of years"></asp:TextBox>
        </div>

        <div class="calcContainer">
            <asp:Button class="button" ID="PerformCalcButton" runat="server" Text="Compute Monthly Cost" />
        </div>

         <div class="calcContainer">
             <asp:Label ID="Results" runat="server" Text=""></asp:Label>
        </div>

    </div>
    </form>
</body>
</html>
