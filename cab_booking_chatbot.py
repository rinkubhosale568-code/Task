import random

def read_choice(prompt):
    """Read an integer choice safely; return None for invalid input."""
    value = input(prompt).strip()
    try:
        return int(value)
    except ValueError:
        return None


def main():
    cab_rates = {
        1: ("Auto", 12),
        2: ("Sedan", 18),
        3: ("SUV", 25)
    }

    routes = {
        1: ("Pune Station", "Shivajinagar", 5),
        2: ("Swargate", "Kothrud", 8),
        3: ("Hinjawadi", "Wakad", 10)
    }

    while True:
        print("\n===== CAB BOOKING CHATBOT =====")
        print("1. Book Ride")
        print("2. Exit")
        main_choice = read_choice("Enter your choice: ")

        if main_choice == 2:
            print("Thank you for using the Cab Booking Chatbot. Goodbye!")
            break

        elif main_choice == 1:
            print("\nChoose Cab Type:")
            print("1. Auto (₹12/km)")
            print("2. Sedan (₹18/km)")
            print("3. SUV (₹25/km)")
            cab_choice = read_choice("Enter cab choice: ")

            if cab_choice not in cab_rates:
                print("Invalid cab choice. Returning to the main menu.")
                continue

            print("\nChoose Route:")
            for route_no, (source, destination, distance) in routes.items():
                print(f"{route_no}. {source} to {destination} ({distance} km)")
            route_choice = read_choice("Enter route choice: ")

            if route_choice not in routes:
                print("Invalid route choice. Returning to the main menu.")
                continue

            cab_name, rate = cab_rates[cab_choice]
            source, destination, distance = routes[route_choice]
            fare = rate * distance

            print("\n----- Fare Details -----")
            print(f"Cab Type       : {cab_name}")
            print(f"Source         : {source}")
            print(f"Destination    : {destination}")
            print(f"Distance       : {distance} km")
            print(f"Rate           : ₹{rate}/km")
            print(f"Total Fare     : ₹{fare}")

            print("\n1. Confirm & Share OTP")
            print("2. Cancel Ride")
            confirm_choice = read_choice("Enter your choice: ")

            if confirm_choice == 2:
                print("Ride cancelled. No OTP has been shared.")
                continue
            elif confirm_choice != 1:
                print("Invalid choice. Booking cancelled; no OTP has been shared.")
                continue

            otp = random.randint(1000, 9999)
            print(f"Your ride OTP is: {otp}")
            print("IMPORTANT: Once the OTP is shared, the ride cannot be cancelled.")
            print("Booking confirmed successfully!")
        else:
            print("Invalid menu choice. Please enter 1 or 2.")


if __name__ == "__main__":
    main()
