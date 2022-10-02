//
//  FreshLayoutBuilder.swift
//  ewdewfd
//
//  Created by Claudio Cavalli on 18/05/22.
//

import Foundation
import UIKit

// MARK: - FreshLayoutGroup.
public protocol FreshLayoutGroup {
    var constraints: [NSLayoutConstraint] { get }
}
// MARK: - NSLayoutConstraint.
extension NSLayoutConstraint: FreshLayoutGroup {
    public var constraints: [NSLayoutConstraint] { [self] }
}
// MARK: - Array.
extension Array: FreshLayoutGroup where Element == NSLayoutConstraint {
    public var constraints: [NSLayoutConstraint] { self }
}
// MARK: - FreshLayoutBuilder.
@resultBuilder
public struct FreshLayoutBuilder {
    // buildBlock.
    public static func buildBlock(_ components: FreshLayoutGroup...) -> [NSLayoutConstraint] {
        components.flatMap { $0.constraints }
    }
    // buildOptional.
    public static func buildOptional(_ component: [FreshLayoutGroup]?) -> [NSLayoutConstraint] {
        component?.flatMap { $0.constraints } ?? []
    }
    // buildEither.
    public static func buildEither(first component: [FreshLayoutGroup]) -> [NSLayoutConstraint] {
        component.flatMap { $0.constraints }
    }
    // buildEither.
    public static func buildEither(second component: [FreshLayoutGroup]) -> [NSLayoutConstraint] {
        component.flatMap { $0.constraints }
    }
}
