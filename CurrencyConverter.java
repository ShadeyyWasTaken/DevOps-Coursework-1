import java.util.*;
import java.text.DecimalFormat;

public class CurrencyConverter {

        public static void main(String[] args) {

		if (args.length != 2)
		{
			System.out.println("Please provide input in the form of: value currency");
			return;
		}
                double amount, dollar, pound, code, euro;

                DecimalFormat f = new DecimalFormat("##.##");

		try {
			amount = Double.parseDouble(args[0]);

		}

		catch (Exception e) {
			System.out.println("Please provide input in the form of: value currency");
			return;
		}
                String currency = args[1].toLowerCase();

                // For amounts Conversion
                switch (currency){
                        case "dollars" :
                                // For Dollar Conversion
                                pound = amount * 0.74;
                                System.out.println(amount + " Dollars = " + f.format(pound) + " Pounds");
                                euro = amount * 0.88;
                                System.out.println(amount + " Dollars = " + f.format(euro) + " Euros");
                                break;
                        case "pounds":
                                // For Pound Conversion
                                dollar = amount * 1.36;
                                System.out.println(amount + " Pounds = " + f.format(dollar) + " Dollars");
                                euro = amount * 1.19;
                                System.out.println(amount + " Pounds = " + f.format(euro) + " Euros");
                                break;
                        case "euros":
                                // For Euro Conversion
                                dollar = amount * 1.13;
                                System.out.println(amount + " Euros = " + f.format(dollar) + " Dollars");
                                pound = amount * 0.84;
                                System.out.println(amount + " Euros = " + f.format(pound) + " Pounds");
                                break;
			default:
				System.out.println("Please use one of the following currencies in plural form: dollars, pounds, euros (Case-Sensitive)");
				return;
                }
                System.out.println("Thank you for using the converter.");
        }
}

//Test Automation GitHub Push
