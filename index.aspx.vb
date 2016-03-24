
Partial Class index
    Inherits System.Web.UI.Page

    Protected Sub PerformCalcButton_Click(sender As Object, e As EventArgs) Handles PerformCalcButton.Click
        'Specific constant values
        Const INTEREST_CALCS_PER_YEAR As Integer = 12
        Const PAYMENTS_PER_YEAR As Integer = 12

        'Create variable to hold the values entered by the user
        Dim loanPrincipal As Decimal = LoanAmount.Text
        Dim loanRate As Decimal = InterestRate.Text / 100
        Dim totalTime As Decimal = MortgageLength.Text

        Dim ratePerPeriod As Decimal
        ratePerPeriod = loanRate / INTEREST_CALCS_PER_YEAR

        Dim payPeriods As Integer
        payPeriods = totalTime * PAYMENTS_PER_YEAR

        Dim annualRate As Decimal
        annualRate = Math.Exp(INTEREST_CALCS_PER_YEAR * Math.Log(1 + ratePerPeriod)) - 1

        Dim intPerPayment As Decimal
        intPerPayment = (Math.Exp(Math.Log(annualRate + 1) / payPeriods) - 1) * payPeriods

        'Now, compute the total cost of the loan
        Dim intPerMonth As Decimal = intPerPayment / PAYMENTS_PER_YEAR

        Dim costPerMonth As Decimal
        costPerMonth = loanPrincipal * intPerMonth / (1 - Math.Pow(intPerMonth + 1, -payPeriods))

        'Display the results in the Label Web Control
        Results.Text = "Your monthly mortgage payment is $" & costPerMonth

    End Sub
End Class
