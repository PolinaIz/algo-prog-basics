function kross!(robot)
    num_steps=verx!(robot)
    num_steps2=lefo(robot)
    vniz!(robot)
    prav(robot)
    pole!(robot)
    move!(robot, Ost, num_steps2)
    move!(robot, Sud, num_steps)
end
function vniz!(robot)
    while ! isborder(robot, Sud)
        move!(robot, Sud)
    end
end
function pole!(robot)
    while ! isborder(robot, Nord)
        while ! isborder(robot, West)
            putmarker!(robot)
            move!(robot, West)
        end
        putmarker!(robot)
        move!(robot, Nord)
        while ! isborder(robot, Ost)
            putmarker!(robot)
            move!(robot, Ost)
        end
        putmarker!(robot)
        move!(robot,  Nord)
    end
    while ! isborder(robot, West)
        putmarker!(robot)
        move!(robot, West)
    end
    putmarker!(robot)
end
function lefo(robot)::Int
    n::Int=0
    while ! isborder(robot, West)
        move!(robot, West)
        n+=1
    end
    return n
end
function verx!(robot)::Int
    n::Int=0
    while ! isborder(robot, Nord)
        move!(robot, Nord)
        n+=1
    end
    return n
end
function prav(robot)
    while ! isborder(robot, Ost)
        move!(robot, Ost)
    end
end