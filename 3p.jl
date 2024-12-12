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
function lefo(robot)
    n=0
    while ! isborder(robot, West)
        move!(robot, West)
        n+=1
    end
    return n
end
function verx!(robot)
    n=0
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
function HorizonSideRobots.move!(robot, side, num_steps)
    for _  in 1:num_steps
        move!(robot, side)
    end
end
function HorizonSideRobots.move!(robot, side, num_steps2)
    for _  in 1:num_steps2
        move!(robot, side)
    end
end