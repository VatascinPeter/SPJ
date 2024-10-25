abstract type Agent end
abstract type Animal <: Agent end
abstract type Plant <: Agent end

# GRASS
mutable struct Grass{T<:Unsigned} <:Plant
    id::T
    size::T
    max_size::T
end

Grass(id, size, max_size) = Grass{UInt}(id, size, max_size)
Grass(id, max_size) = Grass{UInt}(id, rand(1:max_size), max_size)
Grass(id) = Grass(id, 10)

Base.show(io::IO, a::Grass) = print(io, "Grass $(round(UInt, a.size / a.max_size * 100))% grown")

# WOLF
mutable struct Wolf{T<:Unsigned, S<:AbstractFloat} <: Animal
    id::T
    energy::S
    Δenergy::S
    reprprob::S
    foodprob::S
end

Wolf(id, energy, Δenergy, reprprob, foodprob) = Wolf{UInt, Float32}(id, energy, Δenergy, reprprob, foodprob)
Wolf(id; energy = 10.0, Δenergy = 8.0, reprprob = 0.1, foodprob = 0.2) = Wolf{UInt, Float32}(id, energy, Δenergy, reprprob, foodprob)

Base.show(io::IO, a::Wolf) = print(io, "Wolf id: $(a.id), E: $(a.energy), ΔE: $(a.Δenergy), pr: $(a.reprprob), pf: $(a.foodprob)")

# SHEEP
mutable struct Sheep{T<:Unsigned, S<:AbstractFloat} <: Animal
    id::T
    energy::S
    Δenergy::S
    reprprob::S
    foodprob::S
end

Sheep(id, energy, Δenergy, reprprob, foodprob) = Sheep{UInt, Float32}(id, energy, Δenergy, reprprob, foodprob)
Sheep(id; energy = 4.0, Δenergy = 2.0, reprprob = 0.8, foodprob = 0.6) = Sheep{UInt, Float32}(id, energy, Δenergy, reprprob, foodprob)

Base.show(io::IO, a::Sheep) = print(io, "Sheep id: $(a.id), E: $(a.energy), ΔE: $(a.Δenergy), pr: $(a.reprprob), pf: $(a.foodprob)")

# WORLD
mutable struct World{A<:Agent}
    agents::Dict{UInt,A}
    max_id::UInt
end

function World(agents::Vector{<:Agent})
    max_id = maximum(a.id for a in agents)
    World(Dict(a.id=>a for a in agents), max_id)
end

function Base.show(io::IO, w::World)
    println(io, typeof(w))
    for a in values(w.agents)
        println(io,"  ",a)
    end
end

# SIMULATION FUNCTIONS
function eat!(s::Sheep, g::Grass, w::World)
    s.energy += g.size * s.Δenergy
    g.size = 0
end

function kill_agent!(a::Animal, w::World)
    delete!(w.agents, a.id)
end

function eat!(wolf::Wolf, s::Sheep, world::World)
    wolf.energy += wolf.Δenergy * s.energy
    kill_agent!(s, world)
end

function reproduce!(a::Animal, w::World)
    a.energy /= 2
    w.max_id += 1
    w.agents[w.max_id] = deepcopy(a)
    w.agents[w.max_id].id = w.max_id
end

# AGENT COUNTS
function agent_count(a::Animal) 
    1.0
end

function agent_count(g::Plant)
    g.size / g.max_size
end

function agent_count(a::Vector{<:Agent})
    sum(agent_count, a)
end

function agent_count(w::World)
    res = Dict{Symbol, Real}()
    for (_, agent) in w.agents
        key = nameof(typeof(agent))
        if haskey(res, key)
            res[key] += agent_count(agent)
        else
            res[key] = agent_count(agent)
        end
    end
    return res
end

struct ⚥Sheep <: Animal
    sheep::Sheep
    sex::Symbol
end

⚥Sheep(id, e=4.0, Δe=0.2, pr=0.8, pf=0.6, sex=rand(Bool) ? :female : :male) = ⚥Sheep(Sheep{UInt, Float64}(id,e,Δe,pr,pf),sex)

function Base.setproperty!(s::⚥Sheep, f::Symbol, val)
    if f in fieldnames(Sheep)
        setfield!(s.sheep, f, val)
    else
        setfield!(s, f, val)
    end
end

function Base.getproperty(s::⚥Sheep, f::Symbol)
    if f in fieldnames(Sheep)
        getfield(s.sheep, f)
    else
        getfield(s, f)
    end
end

eat!(s::⚥Sheep, food, world) = eat!(s.sheep, food, world)


