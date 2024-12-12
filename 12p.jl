using HorizonSideRobots
function kross!(robot)
    num_steps2=lefo(robot)
    num_steps=verx(robot)
    println(pole!(robot))
    move!(robot, Sud, num_steps)
    move!(robot, Ost, num_steps2)
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
function pole!(robot)
    n = 0
    while ! (isborder(robot, West) & isborder(robot, Sud))
        while ! isborder(robot, Ost)
            if isborder(robot, Sud)
                n+=1
                while isborder(robot, Sud)
                    move!(robot, Ost)
                    if ! (isborder(robot, Sud) & isborder(robot, Ost))
                        move!(robot, Ost)
                    end
                end
            else
                move!(robot, Ost)
            end
        end
        move!(robot, Sud)
        while ! isborder(robot, West)
            if isborder(robot, Sud)
                n+=1
                while isborder(robot, Sud)
                    move!(robot, West)
                    if ! (isborder(robot, Sud) & isborder(robot, West))
                        move!(robot, West)
                    end
                end
            else
                move!(robot, West)
            end
        end
        move!(robot, Sud)
    end
    while ! isborder(robot, Nord)
        move!(robot, Nord)
    end
    return n
end