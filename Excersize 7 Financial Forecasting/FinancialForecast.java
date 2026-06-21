public class FinancialForecast {

    // Method to calculate future value using recursion
    public static double calculateFutureValue(double presentValue,
                                              double growthRate,
                                              int numberOfYears) {

        // Base case
        if (numberOfYears == 0) {
            return presentValue;
        }

        // Recursive case
        return calculateFutureValue(presentValue,
                                    growthRate,
                                    numberOfYears - 1)
                                    * (1 + growthRate);
    }

    public static void main(String[] args) {

        double presentValue = 10000;
        double growthRate = 0.10; // 10%
        int numberOfYears = 3;

        double futureValue = calculateFutureValue(
                presentValue,
                growthRate,
                numberOfYears);

        System.out.println("Present Value = " + presentValue + "Rs");
        System.out.println("Growth Rate = " + (growthRate * 100) + "%");
        System.out.println("Number of Years = " + numberOfYears);
        System.out.println("Future Value = " + futureValue + "Rs");
    }
}
