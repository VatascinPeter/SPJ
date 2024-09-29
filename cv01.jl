#println("Hello, World.")

"""
    polynomial(a, x)

Returns value of a polynomial with coefficients `a` at point `x`.
"""
function polynomial(a, x)
    if eltype(a) != Char
        accumulator = map(((v, w),) -> w * (x ^ (v-1)), enumerate(a))
        return sum(accumulator)
    else
        ArgumentError("Incorrect element type in the argument 'a':\n$(a)")
    end
end

a = [-19, 7, -4, 6] # list coefficients a from a^0 to a^n
x = 3               # point of evaluation

#println(polynomial(a, x))

function addone(x)
    return x + 1
end

af = [-19.0, 7.0, -4.0, 6.0]
at = (-19, 7, -4, 6)
ant = (a₀ = -19, a₁ = 7, a₂ = -4, a₃ = 6)
a2d = [-19 -4; 7 6]
ac = [2i^2 + 1 for i in -2:1]
