function kross!(robot)
    putmarker!(robot)
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
        if ismarker(robot) == true
            move!(robot, Sud)
        else
            move!(robot, Sud)
            putmarker!(robot)
        end
    end
end
function pole!(robot)
    while ! isborder(robot, Nord)
        while ! isborder(robot, West)
            if ismarker(robot) == false
                move!(robot, West)
                putmarker!(robot)
            else
                move!(robot, West)
            end
        end
        if ismarker(robot)==true
            move!(robot, Nord)
        else
            move!(robot, Nord)
            putmarker!(robot)
        end
        while ! isborder(robot, Ost)
            if ismarker(robot) == false
                move!(robot, Ost)
                putmarker!(robot)
            else
                move!(robot, Ost)
            end
        end
        if ismarker(robot)==true
            move!(robot, Nord)
        else
            move!(robot, Nord)
            putmarker!(robot)
        end
    end
    while ! isborder(robot, West)
        if ismarker(robot) == false
            move!(robot, West)
            putmarker!(robot)
        else
            move!(robot, West)
        end
    end
end
function lefo(robot)::Int
    n::Int=0
    while ! isborder(robot, West)
        if ismarker(robot) == true
            move!(robot, West)
        else
            move!(robot, West)
            putmarker!(robot)
        end
        n+=1
    end
    return n
end
function verx!(robot)::Int
    n::Int=0
    while ! isborder(robot, Nord)
        if ismarker(robot) == true
            move!(robot, Nord)
        else 
            move!(robot, Nord)
            putmarker!(robot)
        end
        n+=1
    end
    return n
end
function prav(robot)
    while ! isborder(robot, Ost)
        if ismarker(robot) == true
            move!(robot, Ost)
        else
            move!(robot, Ost)
            putmarker!(robot)
        end
    end
end