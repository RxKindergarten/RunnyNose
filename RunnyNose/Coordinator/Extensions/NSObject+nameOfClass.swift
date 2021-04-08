//
//  NSObject+nameOfClass.swift
//  RunnyNose
//
//  Created by Seungsoo Lee on 2021/04/08.
//

extension NSObject {
  class var nameOfClass: String {
    return NSStringFromClass(self).components(separatedBy: ".").last!
  }
}

