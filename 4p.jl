function kross!(robot)
    step1(robot)
    step2(robot)
    step3(robot)
    step4(robot)
end

function step1(robot)
    while ! isborder(robot, Nord)
        if ! isborder(robot, Ost)
            move!(robot, Ost)
            move!(robot, Nord)
            putmarker!(robot)
        else
            break
        end
    end
    while ismarker(robot)
        move!(robot, Sud)
        move!(robot, West)
    end
end

function step2(robot)
    while ! isborder(robot, West)
        if ! isborder(robot, Nord)
            move!(robot, West)
            move!(robot, Nord)
            putmarker!(robot)
        else
            break
        end
    end
    while ismarker(robot)
        move!(robot, Sud)
        move!(robot, Ost)
    end
end

function step3(robot)
    while ! isborder(robot, Ost)
        if ! isborder(robot, Sud)
            move!(robot, Ost)
            move!(robot, Sud)
            putmarker!(robot)
        else
            break
        end
    end
    while ismarker(robot)
        move!(robot, Nord)
        move!(robot, West)
    end
end

function step4(robot)
    while ! isborder(robot, West) 
        if ! isborder(robot, Sud)
            move!(robot, West)
            move!(robot, Sud)
            putmarker!(robot)
        else
            break
        end
    end
    while ismarker(robot)
        move!(robot, Nord)
        move!(robot, Ost)
    end
end