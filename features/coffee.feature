Feature: Making coffee
    This feature demonstrates
    
    - Basic use of Given/When/Then
    - Background sections

    Background: There is a coffee cup in the machine
        Given that there is a cup in the coffee machine

    Scenario: Making a cup of coffee
         When the "Coffee" button is pressed
         Then the cup is filled with coffee

    Scenario: Coffee with milk
         When the "Coffee with milk" button is pressed
         Then the cup is filled with coffee
          And the cup has milk
