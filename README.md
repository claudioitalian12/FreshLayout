# FreshLayout
 FreshLayout SPM

- [x] Features.

  - [x] Property Wrapper
  - [x] Result Builder
  - [x] Overloading operator
  - [x] DSL/Snapkit syntax
  - [x] Write Unit Test

## 2. How to use

  - [x] Set Constraints: you can use different method to set constraints to a view.
  
  
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
  
  
  - [x] Creation syntax: you can use different method to create constraints to a view.

  
  Create constraint with .constraint():
  
  ```swift
  titleLabel.fresh.makeContraints { make in
   make.top.constraint(backgroundView.fresh.top, relation: equal)
   make.bottom.constraint(backgroundView.fresh.bottom.constant(20.0), relation: equal)
   make.left.constraint(backgroundView.fresh.bottom.multiplier(0.8), relation: equal)
  }
  ```
