import XCTest
@testable import FreshLayout

final class FreshLayoutTests: XCTestCase {
    func testFreshLayoutFreshMakeConstraint() {
        let freshLayout = FreshLayout(wrappedValue: UIView())
        
        freshLayout.makeConstraints { make in
            make.height == 10
            make.width == 20
        }
        
        freshLayout.remakeConstraints { make in
            make.height == 20
        }
        
        freshLayout.updateConstraints { make in
            make.height == 100
            make.width == 500
        }
        
        freshLayout.removeAllConstraints()
    }
    
    func testMakeConstraints() {
        let view = UIView()
        let freshLayout = FreshLayout(wrappedValue: UIView())
        
        view.addSubview(freshLayout.wrappedValue)
        
        freshLayout.makeConstraints { make in
            make.height == view.fresh.height + 10
            make.width == view.fresh.width - 10
            make.left == view.fresh.left
            make.top == view.fresh.top * 0.5
            make.bottom == view.fresh.bottom / 0.5
            make.right == view.fresh.right
            make.leftMargin == view.fresh.leftMargin
            make.topMargin == view.fresh.topMargin * 0.5
            make.bottomMargin == view.fresh.bottomMargin / 0.5
            make.rightMargin == view.fresh.rightMargin
            make.leadingMargin == view.fresh.leadingMargin
            make.trailingMargin == view.fresh.trailingMargin
            make.centerYWithinMargins == view.fresh.centerYWithinMargins
            make.centerXWithinMargins == view.fresh.centerXWithinMargins
            make.firstBaseline == view.fresh.firstBaseline
            make.lastBaseline == view.fresh.lastBaseline
        }
    }
    
    func testRemaMakeConstraints() {
        let view = UIView()
        let freshLayout = FreshLayout(wrappedValue: UIView())
        
        view.addSubview(freshLayout.wrappedValue)
        
        freshLayout.makeConstraints { make in
            make.height == 10
            make.width == 20
            make.left == view.fresh.left
            make.top <= view.fresh.top
        }
        
        freshLayout.remakeConstraints { make in
            make.height == 20
            make.top >= view.fresh.top
        }
    }
    
    func testUpdateConstraints() {
        let view = UIView()
        let freshLayout = FreshLayout(wrappedValue: UIView())
        
        view.addSubview(freshLayout.wrappedValue)
        
        freshLayout.makeConstraints { make in
            make.height == 10
            make.width == 20
        }
        
        freshLayout.updateConstraints { make in
            make.height == 100
        }
    }
    
    func testRemoveAllConstraints() {
        let view = UIView()
        let freshLayout = FreshLayout(wrappedValue: UIView())
        
        view.addSubview(freshLayout.wrappedValue)
        
        freshLayout.makeConstraints { make in
            make.height == 10
            make.width == 20
        }
        
        freshLayout.removeAllConstraints()
    }
    
    func testAnchorToView() {
        let view = UIView()
        let freshLayout = FreshLayout(wrappedValue: UIView())
        
        view.addSubview(freshLayout.wrappedValue)
        
        freshLayout.makeConstraints { make in
            make.anchorTo(boundsOf: view)
        }
    }
    
    func testCenterToView() {
        let view = UIView()
        let freshLayout = FreshLayout(wrappedValue: UIView())
        
        view.addSubview(freshLayout.wrappedValue)
        
        freshLayout.makeConstraints { make in
            make.centerTo(boundsOf: view)
        }
    }
}
