function Circle!(robot)
    HorizonSide = [Sud, Ost, Nord, West]
    n = 1
    k = 0
    while ! ismarker(robot)
        for i in HorizonSide
            if ! ismarker(robot)
                if k<2
                    move!(robot, i, n)
                end
                if k == 2
                    n += 1
                    move!(robot, i, n)
                    k = 0
                end
                k+=1
            end
        end
    end 
end
function HorizonSideRobots.move!(robot, side, n)
    for _  in 1:n
        move!(robot, side)
    end
end