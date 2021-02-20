using ExecutableSpecifications
using CoffeeMachine

@given "that there is no cup in the machine" begin
    machine = context[:machine]
    removecup!(machine)    
end

@then "the user is informed that there is no cup in the machine" begin
    machine = context[:machine]
    usermessage(machine) == "There is no cup in the machine"
end