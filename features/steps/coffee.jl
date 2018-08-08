using ExecutableSpecifications
using CoffeeMachine

hascoffee(cup::Cup) = cup[:coffee] > 0.0
hasmilk(cup::Cup) = cup[:milk] > 0.0

@given "that there is a cup in the coffee machine" begin
    cup = Cup()
    machine = context[:machine]

    cupisinthemachine(machine, cup)

    context[:cup] = cup
end

@when "the \"Coffee\" button is pressed" begin
    machine = context[:machine]
    coffeewaspressed(machine)
end

@when "the \"Coffee with milk\" button is pressed" begin
    machine = context[:machine]
    coffeewithmilkwaspressed(machine)
end

@then "the cup is filled with coffee" begin
    cup = context[:cup]
    @expect hascoffee(cup)
end

@then "the cup has milk" begin
    cup = context[:cup]
    @expect hasmilk(cup)
end