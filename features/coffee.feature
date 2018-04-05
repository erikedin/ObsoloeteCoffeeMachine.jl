Feature: Making coffee

    Scenario: Making a cup of coffee
        Given that there is a cup in the coffee machine
         When the "Coffee" button is pressed
         Then the cup is filled with coffee

    Scenario: Coffee with milk
        Given that there is a cup in the coffee machine
         When the "Coffee with milk" button is pressed
         Then the cup is filled with coffee
          And the cup has milk
