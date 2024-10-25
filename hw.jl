using LinearAlgebra
"""
    polynomial(a, x)

Returns value of a polynomial with coefficients `a` at point `x`. Taken from the first lesson.
"""
function polynomial(a, x)
    if eltype(a) != Char
        accumulator = map(((v, w),) -> w * (x ^ (v-1)), enumerate(a))
        return sum(accumulator)
    else
        ArgumentError("Incorrect element type in the argument 'a':\n$(a)")
    end
end
"""
    circlemat(n)

Creates an nxn matrix
"""
function circlemat(n)
    return [(i == j - 1 && j > 1) || 
            (i == n && j == 1) || 
            (i == j + 1 && j < n) || 
            (i == 1 && j == n) ? 1 : 0 
            for i in 1:n, j in 1:n]
end

A = circlemat(10)
A2 = A * A
A3 = A2 * A
return I + A + A2 + A3
