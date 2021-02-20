(define (domain pddl)
    (:requirements :adl :typing)
    (:types content - item
            day - item)
    (:functions
        (dayCapacity ?d - day) 
        (numDay ?d - day)    
        (lastDayUsed ?c - content)  
        (predecessors ?c - content)    
        (predecessorsWatched ?c - content))
    (:predicates
        (predecessor ?x - content ?y - content)
        (watch ?x - content)
        (toWatch ?x - content)
        (paralel ?x - content ?y - content))

    (:action watch_global :parameters (?d - day ?x - content)
        :precondition   (and
                            (not(watch ?x))
                            (< (dayCapacity ?d) 3)
                            (forall (?y - content) (or
                                (and 
                                    (predecessor ?y ?x)
                                    (> (numDay ?d) (lastDayUsed ?y))
                                )
                                (not (predecessor ?y ?x))))
                            (= (predecessors ?x) (predecessorsWatched ?x))
                            (forall (?y - content) (or 
                                                            (and (not(paralel ?y ?x)) (not (paralel ?x ?y)))
                                                            (and 
                                                                (paralel ?y ?x) 
                                                                (or(= (lastDayUsed ?y) (numDay ?d))
                                                                (= (+ (lastDayUsed ?y) 1) (numDay ?d))
                                                                (= (lastDayUsed ?y) (+ (numDay ?d) 1)))
                                                            )
                                                            (and 
                                                                (paralel ?x ?y) 
                                                                (or (= (lastDayUsed ?y) (numDay ?d))
                                                                (= (+ (lastDayUsed ?y) 1) (numDay ?d))
                                                                (= (lastDayUsed ?y) (+ (numDay ?d) 1)))
                                                            )
                                                        )
                                )
                        )
        :effect (and
                    (increase (dayCapacity ?d) 1)
                    (watch ?x)
                    (forall (?y - content) (when (predecessor ?x ?y) (increase (predecessorsWatched ?y) 1)))
                    (forall (?y - content) (when (paralel ?y ?x) (toWatch ?y)))
                    (forall (?y - content) (when (paralel ?x ?y) (toWatch ?y)))
                    (assign (lastDayUsed ?x) (numDay ?d))
                )
    )

    (:action allParalelWatched :parameters (?y - content)
        :precondition (and (and 
                            (or
                                (exists (?z - content) (paralel ?z ?y))
                                (exists (?z - content) (paralel ?y ?z))
                            )
                            (and
                                (forall (?z - content) (or (and (paralel ?z ?y) (watch ?z)) (not (paralel ?z ?y))))
                                (forall (?z - content) (or (and (paralel ?y ?z) (watch ?z)) (not (paralel ?y ?z))))
                            )
                    ) (watch ?y))
        :effect (not (toWatch ?y)))

    (:action watched :parameters (?y - content)
        :precondition (and (not (exists (?z - content) (paralel ?z ?y))) (not (exists (?z - content) (paralel ?y ?z))) (watch ?y))
        :effect (not (toWatch ?y)))
)