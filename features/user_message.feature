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