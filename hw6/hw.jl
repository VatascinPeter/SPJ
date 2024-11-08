find_variables(a) = []

function find_variables(s::Symbol)
    str = string(s)
    length(str) == 1 && isletter(str[1]) ? [s] : []
end

function find_variables(e::Expr)
    args = e.args
    if e.head == :call
        args = e.args[2:end]
    end
    sort(unique([(map(find_variables, args)...)...]))
end

find_variables(s::String) = find_variables(Meta.parse(s))
