(define (problem Monster1)

    (:domain caveDomain)
    
    (:objects person1 loc1 loc2 loc3 loc4 loc5 loc6 monster1 pit1 treasure1 )
    
    (:init
    (person person1) (location loc1) (location loc2) (location loc3)
    (location loc4) (location loc5) (location loc6) (treasure treasure1)
    (monster monster1) (pit pit1) (at-person person1 loc1)
    (at-monster monster1 loc6) (at-pit pit1 loc5) (at-treasure treasure1 loc4)
    (isSafe loc1) (isSafe loc2) (isSafe loc3) (isSafe loc4)
    (hasPath loc1 loc5) (hasPath loc1 loc6) (hasPath loc1 loc2)
    (hasPath loc2 loc1) (hasPath loc2 loc3) (hasPath loc3 loc2)
    (hasPath loc3 loc4) (hasPath loc4 loc3) (hasPath loc5 loc4)
    (hasPath loc6 loc4) 
    )
    
    (:goal (and (at-person person1 loc1) (carries person1 treasure1)))
)
