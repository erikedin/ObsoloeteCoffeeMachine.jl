using ExecutableSpecifications
using CoffeeMachine

# This file demonstrates a @beforescenario hook that
# runs before every scenario in the entire project.
# See also: Background sections in `coffee.feature`.

@beforescenario begin
    context[:machine] = Machine()
end