(define (problem extensio2) (:domain pddl)
    (:objects object1 object2 object3 object4 object5 object6 object7 object8 object9 object10 object11 object12 - content)
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

        (paralel object1 object2)
        (paralel object2 object11)

        (toWatch object1)

    )

    (:goal (and (forall (?x - content) (not (toWatch ?x))))))
