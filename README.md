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
  
  ```swift
  titleLabel.fresh.makeContraints { make in
   make.anchorTo(boundsOf: view)
  }
  ```
