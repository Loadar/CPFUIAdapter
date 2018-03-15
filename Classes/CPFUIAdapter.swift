//
//  CPFUIAdapter.swift
//  CPFUIAdapter
//
//  Created by Aaron on 2018/3/15.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit

public class CPFUIAdapter {
    public struct ScreenSize: RawRepresentable {
        public typealias RawValue = CGSize
        public var rawValue: CGSize
        
        public init?(rawValue: CGSize) {
            self.rawValue = rawValue
        }
        
        // iPhone4, iPhone4s, iPad(兼容)
        public static let iPhone4 = ScreenSize(rawValue: CGSize(width: 320, height: 480))!
        // iPhone5, iPhone5s, iPhone5c, iPhoneSE
        public static let iPhone5 = ScreenSize(rawValue: CGSize(width: 320, height: 568))!
        // iPhone6, iPhone6s, iPhone7, iPhone8
        public static let iPhone6 = ScreenSize(rawValue: CGSize(width: 375, height: 667))!
        // iPhone6P, iPhone6sP, iPhone7P, iPhone8P
        public static let iPhone6p = ScreenSize(rawValue: CGSize(width: 414, height: 736))!
        // iPhoneX
        public static let iPhoneX = ScreenSize(rawValue: CGSize(width: 375, height: 812))!
    }
    
    private enum Key: String {
        case x, y, average
    }
    
    public static let shared = CPFUIAdapter()
    private init() {}
    
    private var scaleMap: [CPFUIAdapter.Key: CGFloat] = [:]
    
    /// 以iPhone6屏幕尺寸为参照，可指定其他分辨率，单位pt
    public var baseSize: ScreenSize =  .iPhone6 {
        didSet {
            determineScale()
        }
    }
    
    /// 水平方向缩放系数
    public var xScale: CGFloat {
        return scale(with: .x)
    }
    
    /// 垂直方向缩放系数
    public var yScale: CGFloat {
        return scale(with: .y)
    }
    
    /// 平均缩放系数(字体、图片等)
    public var scale: CGFloat {
        return scale(with: .average)
    }
    
    private func scale(with key: CPFUIAdapter.Key) -> CGFloat {
        if scaleMap[key] == nil {
            determineScale()
        }
        return scaleMap[key] ?? 1.0
    }

    private func determineScale() {
        scaleMap.removeAll()
        
        let size = UIScreen.main.bounds.size
        if size == .zero { return }
        let baseSize = self.baseSize.rawValue
        
        let xScale = size.width / baseSize.width
        let yScale = size.height / baseSize.height
        scaleMap[.x] = xScale
        // 宽度扩展时，高度不缩放；宽度缩小时，高度缩小宽度对应比例
        if size.width >= baseSize.width {
            scaleMap[.y] = 1.0
        } else {
            scaleMap[.y] = xScale
        }
        scaleMap[.average] = (xScale + yScale) / 2
    }
}








