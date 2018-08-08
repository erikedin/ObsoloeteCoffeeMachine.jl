using ExecutableSpecifications
using CoffeeMachine

@beforescenario begin
    context[:machine] = Machine()
end