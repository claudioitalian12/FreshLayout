# FreshLayout
 FreshLayout SPM

### 1. Futures

  - [x] Property Wrapper
  - [x] Result Builder
  - [x] Overloading operator
  - [x] DSL/Snapkit syntax
  - [x] Write Unit Test

### 2. How to use

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
