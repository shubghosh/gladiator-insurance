package lti.insurance.service;

import java.util.Scanner;

/**
 * 
 * @author Vipul Maingi, Shubhankar Ghosh @version1.0
 *
 */
public class PremiumCalculator {
	public Premium premium;

	public PremiumCalculator() {
		premium = Premium.getInstance();
	}

	/*public void setMethods() {
		@SuppressWarnings("resource")
		Scanner sc = new Scanner(System.in);

		System.out.println("Enter value of vehicle in Integer");
		premium.setValue(sc.nextInt());

		System.out.println("Enter the difference in purchased year and current year");
		premium.setYear(sc.nextInt());

		System.out.println("Enter policy type");
		premium.setPolicyType(sc.next());

		System.out.println("Enter type of vehicle: ");
		System.out.println("Press 2 for two wheelers");
		System.out.println("Press 4 for four wheelers");
		int choice = sc.nextInt();
		// switch case selecting the type of vehicle
		switch (choice) {
		case 2:
			premium.setType("2-wheeler");
			break;
		case 4:
			premium.setType("4-wheeler");
			break;
		default:
			System.out.println("Enter an appropriate choice");
		}

	}*/

	public void calculatePremium() {
		double value = 0.0;

		/*
		 * Calculating premium for Normal type policy at 2% for four-wheelers and 1% at
		 * two-wheelers
		 */

		if (premium.getPolicyType().equalsIgnoreCase("NTP")) {
			// if for checking the year
			if (premium.getYear() == 0) {
				if (premium.getType().equalsIgnoreCase("4-wheeler"))
					premium.setPremi(premium.getValue() * .04);
				else if (premium.getType().equalsIgnoreCase("2-wheeler"))
					premium.setPremi(premium.getValue() * .02);
			} else if (premium.getYear() == 1) {
				// if for checking the type of vehicle
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					// logic for getting premium for 4 wheeler
					value = premium.getValue() - (.05 * premium.getValue());
					premium.setPremi(.04 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					// logic for getting premium for 2 wheeler
					value = premium.getValue() - (.05 * premium.getValue());
					premium.setPremi(.02 * value);
				}
			} else if (premium.getYear() == 2) {

				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					value = premium.getValue() - (.10 * premium.getValue());
					premium.setPremi(.04 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					value = premium.getValue() - (.10 * premium.getValue());
					premium.setPremi(.02 * value);
				}
			} else if (premium.getYear() == 3) {
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					value = premium.getValue() - (.15 * premium.getValue());
					premium.setPremi(.04 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					value = premium.getValue() - (.15 * premium.getValue());
					premium.setPremi(.02 * value);
				}
			} else if (premium.getYear() == 4) {
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					value = premium.getValue() - (.20 * premium.getValue());
					premium.setPremi(.04 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					value = premium.getValue() - (.20 * premium.getValue());
					premium.setPremi(.02 * value);
				}
			} else if (premium.getYear() == 5) {
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					value = premium.getValue() - (.25 * premium.getValue());
					premium.setPremi(.04 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					value = premium.getValue() - (.25 * premium.getValue());
					premium.setPremi(.02 * value);
				}
			} else if (premium.getYear() == 6) {
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					value = premium.getValue() - (.30 * premium.getValue());
					premium.setPremi(.04 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					value = premium.getValue() - (.30 * premium.getValue());
					premium.setPremi(.02 * value);
				}
			}
			else if (premium.getYear() == 7) {
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					value = premium.getValue() - (.35 * premium.getValue());
					premium.setPremi(.04 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					value = premium.getValue() - (.35 * premium.getValue());
					premium.setPremi(.02 * value);
				}
			}
			else if (premium.getYear() == 8) {
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					value = premium.getValue() - (.40 * premium.getValue());
					premium.setPremi(.04 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					value = premium.getValue() - (.40 * premium.getValue());
					premium.setPremi(.02 * value);
				}
			}
			else if (premium.getYear() == 9) {
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					value = premium.getValue() - (.45 * premium.getValue());
					premium.setPremi(.04 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					value = premium.getValue() - (.45 * premium.getValue());
					premium.setPremi(.02 * value);
				}
			}
			else if (premium.getYear() == 10) {
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					value = premium.getValue() - (.50 * premium.getValue());
					premium.setPremi(.04 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					value = premium.getValue() - (.50 * premium.getValue());
					premium.setPremi(.02 * value);
				}
			}
			
			else if(premium.getYear()>10)
				premium.setPremi(0.0);
		}
		/*
		 * Calculating premium for Comprehensive type policy at 6% for four-wheelers and
		 * 3% at two-wheelers
		 */
		else if (premium.getPolicyType().equalsIgnoreCase("CVP")) {
			if (premium.getYear() == 0) {
				if (premium.getType().equalsIgnoreCase("4-wheeler"))
					premium.setPremi(premium.getValue() * .06);
				else if (premium.getType().equalsIgnoreCase("2-wheeler"))
					premium.setPremi(premium.getValue() * .03);
			} else if (premium.getYear() == 1) {
				// if for checking the type of vehicle
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					// logic for getting premium for 4 wheeler
					value = premium.getValue() - (.05 * premium.getValue());
					premium.setPremi(.06 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					// logic for getting premium for 2 wheeler
					value = premium.getValue() - (.05 * premium.getValue());
					premium.setPremi(.03 * value);
				}
			} else if (premium.getYear() == 2) {
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					value = premium.getValue() - (.10 * premium.getValue());
					premium.setPremi(.06 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					value = premium.getValue() - (.10 * premium.getValue());
					premium.setPremi(.03 * value);
				}
			} else if (premium.getYear() == 3) {
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					value = premium.getValue() - (.15 * premium.getValue());
					premium.setPremi(.06 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					value = premium.getValue() - (.15 * premium.getValue());
					premium.setPremi(.03 * value);
				}
			} else if (premium.getYear() == 4) {
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					value = premium.getValue() - (.20 * premium.getValue());
					premium.setPremi(.06 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					value = premium.getValue() - (.20 * premium.getValue());
					premium.setPremi(.03 * value);
				}
			} else if (premium.getYear() == 5) {
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					value = premium.getValue() - (.25 * premium.getValue());
					premium.setPremi(.06 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					value = premium.getValue() - (.25 * premium.getValue());
					premium.setPremi(.03 * value);
				}
			} else if (premium.getYear() == 6) {
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					value = premium.getValue() - (.30 * premium.getValue());
					premium.setPremi(.06 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					value = premium.getValue() - (.30 * premium.getValue());
					premium.setPremi(.03 * value);
				}
			}
			else if (premium.getYear() == 7) {
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					value = premium.getValue() - (.35 * premium.getValue());
					premium.setPremi(.06 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					value = premium.getValue() - (.35 * premium.getValue());
					premium.setPremi(.03 * value);
				}
			}
			else if (premium.getYear() == 8) {
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					value = premium.getValue() - (.40 * premium.getValue());
					premium.setPremi(.06 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					value = premium.getValue() - (.40 * premium.getValue());
					premium.setPremi(.03 * value);
				}
			}
			else if (premium.getYear() == 9) {
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					value = premium.getValue() - (.45 * premium.getValue());
					premium.setPremi(.06 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					value = premium.getValue() - (.45 * premium.getValue());
					premium.setPremi(.03 * value);
				}
			}
			else if (premium.getYear() == 10) {
				if (premium.getType().equalsIgnoreCase("4-wheeler")) {
					value = premium.getValue() - (.50 * premium.getValue());
					premium.setPremi(.06 * value);
				} else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					value = premium.getValue() - (.50 * premium.getValue());
					premium.setPremi(.03 * value);
				}
			}
			
			else if(premium.getYear()>10)
				premium.setPremi(0.0);
		}

		/*
		 * Calculating premium for zero depreciation policy at 8% for four-wheelers and
		 * 4% for two-wheelers
		 */
		else if (premium.getPolicyType().equalsIgnoreCase("ZDTP")) {
			if (premium.getYear() == 0) {
				if (premium.getType().equalsIgnoreCase("4-wheeler"))
					premium.setPremi(premium.getValue() * .08);
				else if (premium.getType().equalsIgnoreCase("2-wheeler"))
					premium.setPremi(premium.getValue() * .04);
			} else if (premium.getYear() == 1) {
				if (premium.getType().equalsIgnoreCase("4-wheeler"))
					premium.setPremi(.08 * premium.getValue());
				else if (premium.getType().equalsIgnoreCase("2-wheeler"))
					premium.setPremi(.04 * premium.getValue());
			} else if (premium.getYear() == 2) {
				if (premium.getType().equalsIgnoreCase("4-wheeler"))
					premium.setPremi(.08 * premium.getValue());
				else if (premium.getType().equalsIgnoreCase("2-wheeler"))
					premium.setPremi(.04 * premium.getValue());
			} else if (premium.getYear() == 3) {
				if (premium.getType().equalsIgnoreCase("4-wheeler"))
					premium.setPremi(.08 * premium.getValue());
				else if (premium.getType().equalsIgnoreCase("2-wheeler"))
					premium.setPremi(.04 * premium.getValue());
			} else if (premium.getYear() == 4) {
				if (premium.getType().equalsIgnoreCase("4-wheeler"))
					premium.setPremi(.08 * premium.getValue());
				else if (premium.getType().equalsIgnoreCase("2-wheeler"))
					premium.setPremi(.04 * premium.getValue());
			} else if (premium.getYear() == 5) {
				if (premium.getType().equalsIgnoreCase("4-wheeler"))
					premium.setPremi(.08 * premium.getValue());
				else if (premium.getType().equalsIgnoreCase("2-wheeler")) {
					premium.setPremi(.04 * premium.getValue());
				}
			} else if (premium.getYear() == 6) {
				if (premium.getType().equalsIgnoreCase("4-wheeler"))
					premium.setPremi(.08 * premium.getValue());
				else if (premium.getType().equalsIgnoreCase("2-wheeler"))
					premium.setPremi(.04 * premium.getValue());
			}
			else if (premium.getYear() == 7) {
				if (premium.getType().equalsIgnoreCase("4-wheeler"))
					premium.setPremi(.08 * premium.getValue());
				else if (premium.getType().equalsIgnoreCase("2-wheeler"))
					premium.setPremi(.04 * premium.getValue());
			}
			else if (premium.getYear() == 8) {
				if (premium.getType().equalsIgnoreCase("4-wheeler"))
					premium.setPremi(.08 * premium.getValue());
				else if (premium.getType().equalsIgnoreCase("2-wheeler"))
					premium.setPremi(.04 * premium.getValue());
			}
			else if (premium.getYear() == 9) {
				if (premium.getType().equalsIgnoreCase("4-wheeler"))
					premium.setPremi(.08 * premium.getValue());
				else if (premium.getType().equalsIgnoreCase("2-wheeler"))
					premium.setPremi(.04 * premium.getValue());
			}
			else if (premium.getYear() == 10) {
				if (premium.getType().equalsIgnoreCase("4-wheeler"))
					premium.setPremi(.08 * premium.getValue());
				else if (premium.getType().equalsIgnoreCase("2-wheeler"))
					premium.setPremi(.04 * premium.getValue());
			}
			else if(premium.getYear()>10)
				premium.setPremi(0.0);
		}
	}
}
