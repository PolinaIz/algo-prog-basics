function kross!(robot)
    actions!(robot)
end
function actions!(robot)
    n=0
    while isborder(robot, Nord)
        n=n+1
        for _ in range(1, 1, n)
            move!(robot, West)
        end
        if isborder(robot, Nord)
            n=n+1
            for _ in range(1, 1, n)
                move!(robot, Ost)
            end
        end
    end
end