(define (problem Monster2)

    (:domain caveDomain)
    
    (:objects person1 loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 loc9 
    monster1 pit1 treasure1 weapon1 shoes1)
    
    (:init
    (person person1) (location loc1) (location loc2) (location loc3)
    (location loc4) (location loc5) (location loc6) (location loc7)
    (location loc8) (location loc9) (treasure treasure1) (weapon weapon1) 
    (shoes shoes1) (monster monster1) (pit pit1) (at-person person1 loc1)
    (at-monster monster1 loc3) (at-pit pit1 loc7) (at-treasure treasure1 loc4)
    (at-weapon weapon1 loc6) (at-shoes shoes1 loc8) (isSafe loc1) (isSafe loc2)
    (isSafe loc4) (isSafe loc5) (isSafe loc6) (isSafe loc8) (isSafe loc9) 
    (hasPath loc1 loc2) (hasPath loc1 loc5) (hasPath loc2 loc1) 
    (hasPath loc2 loc3) (hasPath loc3 loc2) (hasPath loc3 loc4) 
    (hasPath loc4 loc3) (hasPath loc5 loc2) (hasPath loc5 loc6)
    (hasPath loc5 loc7) (hasPath loc5 loc9) (hasPath loc6 loc5)
    (hasPath loc6 loc8) (hasPath loc7 loc4) (hasPath loc8 loc6)
    )
    
    (:goal (and (at-person person1 loc1) (carries person1 treasure1)))
)
