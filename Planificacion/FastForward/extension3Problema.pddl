(define (problem extensio3) (:domain pddl)
    (:objects object1 object2 object3 object4 object5 object6 object7 object8 object9 object10 object11 object12 - content
            d1 d2 d3 d4 d5 d6 - day)
    (:init

        (predecessor object2 object3)
        (predecessor object3 object4)
        (predecessor object1 object4)
        (predecessor object5 object6)
        (predecessor object7 object6)
        (predecessor object8 object9)
        (predecessor object10 object4)
        (predecessor object12 object3)
        (predecessor object11 object8)

        (= (predecessors object1) 0)
        (= (predecessors object2) 0)
        (= (predecessors object3) 2)
        (= (predecessors object4) 3)
        (= (predecessors object5) 0)
        (= (predecessors object6) 2)
        (= (predecessors object7) 0)
        (= (predecessors object8) 1)
        (= (predecessors object9) 1)
        (= (predecessors object10) 0)
        (= (predecessors object11) 0)
        (= (predecessors object12) 0)

        (toWatch object7)
        (toWatch object5)
        (toWatch object2)
        (toWatch object1)

        (= (dayCapacity d1) 0)
        (= (dayCapacity d2) 0)
        (= (dayCapacity d3) 0)
        (= (dayCapacity d4) 0)
        (= (dayCapacity d5) 0)
        (= (dayCapacity d6) 0)

        (= (numDay d1) 1)
        (= (numDay d2) 2)
        (= (numDay d3) 3)
        (= (numDay d4) 4)
        (= (numDay d5) 5)
        (= (numDay d6) 6)

        (= (lastDayUsed object1) 0)
        (= (lastDayUsed object2) 0)
        (= (lastDayUsed object3) 0)
        (= (lastDayUsed object4) 0)
        (= (lastDayUsed object5) 0)
        (= (lastDayUsed object6) 0)
        (= (lastDayUsed object7) 0)
        (= (lastDayUsed object8) 0)
        (= (lastDayUsed object9) 0)
        (= (lastDayUsed object10) 0)
        (= (lastDayUsed object11) 0)
        (= (lastDayUsed object12) 0)

        (= (predecessorsWatched object1) 0)
        (= (predecessorsWatched object2) 0)
        (= (predecessorsWatched object3) 0)
        (= (predecessorsWatched object4) 0)
        (= (predecessorsWatched object5) 0)
        (= (predecessorsWatched object6) 0)
        (= (predecessorsWatched object7) 0)
        (= (predecessorsWatched object8) 0)
        (= (predecessorsWatched object9) 0)
        (= (predecessorsWatched object10) 0)
        (= (predecessorsWatched object11) 0)
        (= (predecessorsWatched object12) 0)

    )

    (:goal (and (forall (?x - content) (not (toWatch ?x))))))
