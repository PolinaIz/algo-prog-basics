function kross!(robot)
    num_steps=vnis!(robot)
    num_steps2=pravo(robot)
    vniz!(robot)
    prav(robot)
    crug!(robot)
    move!(robot, West, num_steps2)
    move!(robot, Nord, num_steps)
end
function vniz!(robot)
    while ! isborder(robot, Sud)
        move!(robot, Sud)
    end
end
function crug!(robot)
    for side in (Nord, West, Sud, Ost)
        while ! isborder(robot, side)
            putmarker!(robot)
            move!(robot, side)
        end
    end
end
function pravo(robot)
    n=0
    while ! isborder(robot, Ost)
        move!(robot, Ost)
        n+=1
    end
    return n
end
function vnis!(robot)
    n=0
    while ! isborder(robot, Sud)
        move!(robot, Sud)
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