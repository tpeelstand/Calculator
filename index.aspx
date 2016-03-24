<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET Financial Calculator</title>
    <link rel="stylesheet" href="css/main.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        

        <%-- PRINCIPAL AMOUNT --%>
        <div class="calcContainer">
            <h1>Financial Calulator</h1>

            <span><strong>Principal Amount:</strong></span> 
            <asp:TextBox class="textbox" ID="LoanAmount" runat="server"></asp:TextBox>
        </div>

        <%-- INTEREST RATE --%>
        <div class="calcContainer">
            <span><strong>Interest Rate:</strong></span> 
            <asp:TextBox class="textbox" ID="InterestRate" runat="server"></asp:TextBox>
        </div>

        <%-- MORTGAGE LENGTH  --%>
        <div class="calcContainer">
            <span><strong>Mortgage Length:</strong></span> 
            <asp:TextBox class="textbox" ID="MortgageLength" runat="server"></asp:TextBox>
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
