(define (domain pddl)
    (:requirements :adl :typing)
    (:types content - item)
    (:predicates
        (predecessor ?x - content ?y - content)
        (watch ?x - content)
        (toWatch ?x - content)
        (paralel ?x - content ?y - content))

    (:action watch :parameters (?y - content)
        :precondition (and
                        (forall (?z - content) (or (and (predecessor ?z ?y) (watch ?z)) (not (predecessor ?z ?y))))
                        (and
                            (forall (?z - content) (not (paralel ?z ?y)))
                            (forall (?z - content) (not (paralel ?y ?z)))
                        )
                    )
        :effect (and (not (toWatch ?y)) (watch ?y)))

    (:action watch_same_or_next_day :parameters (?x - content ?y - content)
        :precondition (and
                        (or
                            (or
                                (and
                                    (forall (?z - content) (or (and (predecessor ?z ?y) (watch ?z)) (not (predecessor ?z ?y))))
                                    (forall (?z - content) (not (predecessor ?z ?x)))
                                )
                                (and
                                    (forall (?z - content) (not (predecessor ?z ?y)))
                                    (forall (?z - content) (not (predecessor ?z ?x)))
                                )
                            )
                            (and
                                (forall (?z - content) (or (and (predecessor ?z ?y) (watch ?z)) (not (predecessor ?z ?y))))
                                (forall (?z - content) (or (and (predecessor ?z ?x) (watch ?z)) (not (predecessor ?z ?x))))
                            )
                        )
                        (or
                            (paralel ?x ?y)
                            (paralel ?y ?x)
                        )
                    )
        :effect (and (watch ?x) (watch ?y)
                
                    (forall (?y - content) (when (paralel ?y ?x) (toWatch ?y)))
                    (forall (?y - content) (when (paralel ?x ?y) (toWatch ?y)))
                    ))

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
)