Feature: User messages
    As a user
    I want the machine to tell me when I do something wrong
    So I don't get coffee all over the floor

    Scenario: No cup in the machine
        Given that there is no cup in the machine
         When the "Coffee" button is pressed
         Then the user is informed that there is no cup in the machine

    Scenario: No cup in the machine for Coffee with milk
        Given that there is no cup in the machine
         When the "Coffee with milk" button is pressed
         Then the user is informed that there is no cup in the machine

    # This scenario outline shows both how examples work,
    # and in the step definitions how variables can be used to reuse
    # step definitions for different values.

    Scenario Outline: Count coffee cups
        Given that there is a cup in the coffee machine
          And that the machine has made <n> cups of coffee
         When the statistics button is pressed
         Then the message shows <message>

        Examples:
            | n  | message        |
            | 2  | Coffees: 2     |
            | 8  | Coffees: 8     |
            | 12 | Coffees: Lots! |