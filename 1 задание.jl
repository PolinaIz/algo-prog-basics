function kross!(robot)
    p = pravo!(robot)
    move!(robot, West, p)
    n = niz!(robot)
    move!(robot, Nord, n)
    v = verx!(robot)
    move!(robot, Sud, v)
    l = lefo!(robot)
    move!(robot, Ost, l)
end
function pravo!(robot)::Int
    n::Int=0
    while ! isborder(robot, Ost)
        move!(robot, Ost)
        putmarker!(robot)
        n+=1
    end
    return n
end
function niz!(robot)::Int
    n::Int=0
    while ! isborder(robot, Sud)
        move!(robot, Sud)
        putmarker!(robot)
        n+=1
    end
    return n
end
function verx!(robot)::Int
    n::Int=0
    while ! isborder(robot, Nord)
        move!(robot, Nord)
        putmarker!(robot)
        n+=1
    end
    return n
end
function lefo!(robot)::Int
    n::Int=0
    while ! isborder(robot, West)
        move!(robot, West)
        putmarker!(robot)
        n+=1
    end
    return n
end