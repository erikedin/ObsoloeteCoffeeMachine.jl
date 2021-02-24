using ExecutableSpecifications
using CoffeeMachine

@given "that there is no cup in the machine" begin
    machine = context[:machine]
    removecup!(machine)    
end

@then "the user is informed that there is no cup in the machine" begin
    machine = context[:machine]
    @expect usermessage(machine) == "There is no cup in the machine"
end

@given "that the machine has made {nstr} cups of coffee" begin
    machine = context[:machine]

    n = parse(Int, args[:nstr])

    for i = 1:n
        coffeewaspressed(machine)
    end
end

@when "the statistics button is pressed" begin
    machine = context[:machine]

    statisticsbutton!(machine)
end

@then "the message shows {message}" begin
    machine = context[:machine]
    message = args[:message]

    @expect occursin(message, usermessage(machine))
end