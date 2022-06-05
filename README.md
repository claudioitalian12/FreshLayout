# FreshLayout
 FreshLayout SPM

- [x] Features.

  - [x] Property Wrapper
  - [x] Result Builder
  - [x] Overloading operator
  - [x] DSL/Snapkit syntax
  - [x] Write Unit Test

## 2. How to use

- Set Constraints: you can use different method to set constraints to a view.
  
   - [x] Set Constraints with:
    
     - [x] makeContraints
     - [x] remakeContraints
     - [x] updateContraints

  Set constraints for a view that haven't constraints:
  
  ```swift
  titleLabel.fresh.makeContraints { make in
   make.anchorTo(boundsOf: view)
  }
  ```
  

  Delete all old constraints and set new constraints:

  ```swift
  titleLabel.fresh.remakeContraints { make in
   make.anchorTo(boundsOf: view)
  }
  ```
  
  
  Update old constraints and set new constraints:
  
  ```swift
  titleLabel.fresh.updateContraints { make in
   make.anchorTo(boundsOf: view)
  }
  ```
  
  
- Creation syntax: you can use different method to create constraints to a view.
  
  - [x] Create constraint with .constraint():

    - [x] default
    - [x] constant
    - [x] multiplier

    
  ```swift
  titleLabel.fresh.makeContraints { make in
   make.top.constraint(backgroundView.fresh.top, relation: equal)
   make.bottom.constraint(backgroundView.fresh.bottom.constant(20.0), relation: equal)
   make.left.constraint(backgroundView.fresh.bottom.multiplier(0.8), relation: equal)
   make.height.constraint(200, relation: equal)
  }
  ```
  
  
- Creation syntax: you can use different method to easy set more constraints with only 1 declaration.
  
  - [x] Create constraint with:

    - [x] anchorTo
    - [x] centerTo

    
  ```swift
  titleLabel.fresh.makeContraints { make in
   make.anchorTo(boundsOf: view)
  }
  ```
  
  ```swift
  titleLabel.fresh.makeContraints { make in
   make.centerTo(boundsOf: view)
  }
  ```
  
- Overloading operator: for improve your code speed.
  
  - [x] Create constraint with .constraint():

    - [x] == equal to 
    - [x] <= less to
    - [x] >= great to
    - [x] + add constant
    - [x] * add multiplier

    
  ```swift
  titleLabel.fresh.makeContraints { make in
   make.top <= backgroundView.fresh.top + 10.0
   make.height == 100
  }
  ```
