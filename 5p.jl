using HorizonSideRobots
function kross!(robot)
    num_steps=verx(robot)
    num_steps2=lefo(robot)
    num_steps3=verx(robot)
    num_steps4=lefo(robot)
    vniz!(robot)
    prav!(robot)
    crug!(robot)
    pole!(robot)
    move!(robot, Ost, num_steps4)
    move!(robot, Sud, num_steps3)
    move!(robot, Ost, num_steps2)
    move!(robot, Sud, num_steps)
end
function lefo(robot)
    n=0
    while ! isborder(robot, West)
        move!(robot, West)
        n+=1
    end
    return n
end
function verx(robot)
    n=0
    while ! isborder(robot, Nord)
        move!(robot, Nord)
        n+=1
    end
    return n
end
function crug!(robot)
    for side in (Nord, West, Sud, Ost)
        while ! isborder(robot, side)
            putmarker!(robot)
            move!(robot, side)
        end
    end
end
function vniz!(robot)
    n=0
    while ! isborder(robot, Sud)
        move!(robot, Sud)
        n+=1
    end
    return n
end
function prav!(robot)
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
function HorizonSideRobots.move!(robot, side, num_steps3)
    for _  in 1:num_steps3
        move!(robot, side)
    end
end
function HorizonSideRobots.move!(robot, side, num_steps4)
    for _  in 1:num_steps4
        move!(robot, side)
    end
end
function pole!(robot)
    while ! isborder(robot, Nord)
        while ! isborder(robot, West)
            if ! isborder(robot, Nord)
                move!(robot, West)
            else
                round2!(robot)
                break
            end
        end
        move!(robot, Nord)
        while ! isborder(robot, Ost)
            if ! isborder(robot, Nord)
                move!(robot, Ost)
            else
                round1!(robot)
                break
            end
        end
        move!(robot,  Nord)
    end
    while ! isborder(robot, West)
        move!(robot, West)
    end
end
function round1!(robot)
    putmarker!(robot)
    while isborder(robot, Nord)
        move!(robot, Ost)
        putmarker!(robot)
    end
    move!(robot, Nord)
    putmarker!(robot)
    while isborder(robot, West)
        move!(robot, Nord)
        putmarker!(robot)
    end
    move!(robot, West)
    putmarker!(robot)
    while isborder(robot, Sud)
        move!(robot, West)
        putmarker!(robot)
    end
    move!(robot, Sud)
    putmarker!(robot)
    while isborder(robot, Ost)
        move!(robot, Sud)
        putmarker!(robot)
    end
end
function round2!(robot)
    putmarker!(robot)
    while isborder(robot, Nord)
        move!(robot, West)
        putmarker!(robot)
    end
    move!(robot, Nord)
    putmarker!(robot)
    while isborder(robot, Ost)
        move!(robot, Nord)
        putmarker!(robot)
    end
    move!(robot, Ost)
    putmarker!(robot)
    while isborder(robot, Sud)
        move!(robot, Ost)
        putmarker!(robot)
    end
    move!(robot, Sud)
    putmarker!(robot)
    while isborder(robot, West)
        move!(robot, Sud)
        putmarker!(robot)
    end
end