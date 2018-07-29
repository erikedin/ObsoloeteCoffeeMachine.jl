module CoffeeMachine

mutable struct Cup
    contents::Dict{Symbol, Float64}

    Cup() = new(Dict{Symbol, Float64}(
        :coffee => 0.0,
        :milk => 0.0
    ))
end

Base.getindex(cup::Cup, liquid::Symbol) = cup.contents[liquid]
Base.setindex!(cup::Cup, amount::Float64, liquid::Symbol) = cup.contents[liquid] = amount

mutable struct Machine
    cup::Union{Cup,Nothing}

    Machine() = new(nothing)
end

coffeewaspressed(machine::Machine) = fillcup!(machine, :coffee, 1.0)
function coffeewithmilkwaspressed(machine::Machine)
    fillcup!(machine, :coffee, 1.0)
    fillcup!(machine, :milk, 1.0)
end
cupisinthemachine(machine::Machine, cup::Cup) = machine.cup = cup

fillcup!(machine::Machine, liquid::Symbol, amount::Float64) = machine.cup[liquid] = amount

export Cup, Machine
export coffeewaspressed, coffeewithmilkwaspressed, cupisinthemachine

end # module
