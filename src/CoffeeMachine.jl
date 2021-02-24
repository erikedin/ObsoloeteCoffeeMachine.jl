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
    displaytext::String
    statfills::Int

    Machine() = new(nothing, "", 0)
end

function coffeewaspressed(machine::Machine)
    if machine.cup === nothing
        display!(machine, "There is no cup in the machine")
        return
    end
    machine.statfills += 1
    fillcup!(machine, :coffee, 1.0)
end
function coffeewithmilkwaspressed(machine::Machine)
    if machine.cup === nothing
        display!(machine, "There is no cup in the machine")
        return
    end

    machine.statfills += 1
    fillcup!(machine, :coffee, 1.0)
    fillcup!(machine, :milk, 1.0)
end
cupisinthemachine(machine::Machine, cup::Cup) = machine.cup = cup
function removecup!(machine::Machine) :: Union{Cup, Nothing}
    cup = machine.cup
    machine.cup = nothing

    cup
end

fillcup!(machine::Machine, liquid::Symbol, amount::Float64) = machine.cup[liquid] = amount

display!(m::Machine, s::String) = m.displaytext = s
usermessage(m::Machine) = m.displaytext
function statisticsbutton!(m::Machine)
    if m.statfills >= 12
        display!(m, "Coffees: Lots!")
    else
        display!(m, "Coffees: $(m.statfills)")
    end
end

export Cup, Machine
export coffeewaspressed, coffeewithmilkwaspressed, cupisinthemachine
export removecup!, usermessage, statisticsbutton!

end # module
