(define (domain caveDomain)

    (:requirements :strips)
    
    (:predicates
    (location ?x) (person ?x) (treasure ?x) (shoes ?x) (weapon ?x)
    (monster ?x) (pit ?x)
    (at-person ?person1 ?location1) (at-treasure ?treasure1 ?location1)
    (at-shoes ?shoes1 ?location1) (at-weapon ?weapon1 ?location1) 
    (at-monster ?monster1 ?location1) (at-pit ?pit1 ?location1)
    (hasPath ?location1 ?location2) (isSafe ?location1)
    (carries ?person1 ?treasure1) (holds ?person1 ?weapon1) 
    (wears ?person1 ?shoes1)
    )

    (:action Walk
    :parameters ( ?P ?L1 ?L2 )
    :precondition (and (person ?P) (location ?L1) (location ?L2) 
    (at-person ?P ?L1) (hasPath ?L1 ?L2) (isSafe ?L2)
    )
    :effect (and (at-person ?P ?L2) (not (at-person ?P ?L1)))
    )
    
    (:action PickTreasure
    :parameters ( ?P ?L ?T)
    :precondition (and (person ?P) (location ?L) (treasure ?T)
    (at-person ?P ?L) (at-treasure ?T ?L))
    :effect (and (carries ?P ?T) (not (at-treasure ?T ?L)))
    )
    
    (:action PickWeapon
    :parameters ( ?P ?L ?W)
    :precondition (and (person ?P) (location ?L) (weapon ?W)
    (at-person ?P ?L) (at-weapon ?W ?L))
    :effect (and (holds ?P ?W) (not (at-weapon ?W ?L)))
    )
    
    (:action PickShoes
    :parameters ( ?P ?L ?S)
    :precondition (and (person ?P) (location ?L) (shoes ?S)
    (at-person ?P ?L) (at-shoes ?S ?L))
    :effect (and (wears ?P ?S) (not (at-shoes ?S ?L)))
    )
    
    (:action UseWeapon
    :parameters ( ?P ?L1 ?L2 ?M ?W)
    :precondition (and (person ?P) (location ?L1) (location ?L2) (monster ?M)
    (weapon ?W) (at-person ?P ?L1) (holds ?P ?W) 
    (hasPath ?L1 ?L2) (at-monster ?M ?L2))
    :effect (and (isSafe ?L2) (not (holds ?P ?W)) (not (at-monster ?M ?L2)))
    )
    
    (:action Fly
    :parameters ( ?P ?L1 ?L2 ?PIT ?S)
    :precondition (and (person ?P) (location ?L1) (location ?L2) (pit ?PIT)
    (shoes ?S) (at-person ?P ?L1) (wears ?P ?S) (hasPath ?L1 ?L2) 
    (at-pit ?PIT ?L2))
    :effect (and (at-person ?P ?L2) (not (at-person ?P ?L1)) (not (wears ?P ?S)))
    )
    
)
