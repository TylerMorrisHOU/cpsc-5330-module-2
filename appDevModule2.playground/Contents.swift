import UIKit

/*
 Refer to the appropriate video or any online source for how the mathematics of the calculation works. Your function should take as inputs:

         The amount of the loan in whole dollars (an Int)
         The number of payments (e.g. 360 for 30-year) (an Int)
         The interest rate per payment period in percent ( a positive Doubleing-point number)

 The function should return  the correct value (in dollars and cents, a Double ) of the periodic payment of principal and interest (ignore escrow accounts, taxes, and insurance) for the following scenarios:

         2-month loan of $20,000, 4.4% APR, compounded monthly
         30-year loan of $150,000, 5% APR, one annual payment each year for 30 years

 Note that the interest rate you pass to the function is per payment period. If the period is one year and the interest rate is quoted as an annual rate such as an APR, then you just pass the APR. But, if you have an annual interest rate and the period is monthly, you would divide the rate by 12 before passing it to the function.

 * There are many loan calculators online you can use to check your work.
 */


func payment(amount: Int, payments: Int, interestRate : Double) -> Double {
    let p : Double = Double(amount)
    let r : Double = interestRate
    let t : Double = Double(payments)
    
    return round(((p * r) / (1 - pow(1 + r, -t))) * 100) / 100
}

