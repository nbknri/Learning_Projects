def transmited_to_space(message): # Main Function
    print("Outer", message)

    def data_transmitter(): # Nested function (without argument)
        print("Inner", message) # But this is use Main function's argument
    
    data_transmitter() # Call nested function in main function

transmited_to_space("Test message") # Call main function in out side of main function