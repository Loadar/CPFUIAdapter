//
//  ValueTransfer.swift
//  CPFUIAdapterApp
//
//  Created by Aaron on 2018/3/15.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit

protocol ScaleProtocol {
    var xScale: CGFloat { get }
    var xScaleUp: CGFloat { get }
    var xScaleDown: CGFloat { get }
    var yScale: CGFloat { get }
    var yScaleUp: CGFloat { get }
    var yScaleDown: CGFloat { get }
    var scale: CGFloat { get }
    var scaleUp: CGFloat { get }
    var scaleDown: CGFloat { get }
}

extension ScaleProtocol {
    var xScale: CGFloat { return CPFUIAdapter.shared.xScale }
    var xScaleUp: CGFloat { return CPFUIAdapter.shared.xScaleUp }
    var xScaleDown: CGFloat { return CPFUIAdapter.shared.xScaleDown }
    var yScale: CGFloat { return CPFUIAdapter.shared.yScale }
    var yScaleUp: CGFloat { return CPFUIAdapter.shared.yScaleUp }
    var yScaleDown: CGFloat { return CPFUIAdapter.shared.yScaleDown }
    var scale: CGFloat { return CPFUIAdapter.shared.scale }
    var scaleUp: CGFloat { return CPFUIAdapter.shared.scaleUp }
    var scaleDown: CGFloat { return CPFUIAdapter.shared.scaleDown }
}

extension Float: ScaleProtocol {
    /// 按屏幕宽度比例缩放
    public var cpfX: CGFloat {
        return CGFloat(self) * xScale
    }
    /// 按屏幕宽度比例缩放(不小于原始值)
    public var cpfXUp: CGFloat {
        return CGFloat(self) * xScaleUp
    }
    /// 按屏幕宽度比例缩放(不大于原始值)
    public var cpfXDown: CGFloat {
        return CGFloat(self) * xScaleDown
    }
    /// 按屏幕高度比例缩放
    public var cpfY: CGFloat {
        return CGFloat(self) * yScale
    }
    /// 按屏幕高度比例缩放(不小于原始值)
    public var cpfYUp: CGFloat {
        return CGFloat(self) * yScaleUp
    }
    /// 按屏幕高度比例缩放(不大于原始值)
    public var cpfYDown: CGFloat {
        return CGFloat(self) * yScaleDown
    }
    /// 按平均比例缩放
    public var cpfS: CGFloat {
        return CGFloat(self) * scale
    }
    /// 按平均比例缩放(不小于原始值)
    public var cpfSUp: CGFloat {
        return CGFloat(self) * scaleUp
    }
    /// 按平均比例缩放(不大于原始值)
    public var cpfSDown: CGFloat {
        return CGFloat(self) * scaleDown
    }
}

extension Double: ScaleProtocol {
    /// 按屏幕宽度比例缩放
    public var cpfX: CGFloat {
        return CGFloat(self) * xScale
    }
    /// 按屏幕宽度比例缩放(不小于原始值)
    public var cpfXUp: CGFloat {
        return CGFloat(self) * xScaleUp
    }
    /// 按屏幕宽度比例缩放(不大于原始值)
    public var cpfXDown: CGFloat {
        return CGFloat(self) * xScaleDown
    }
    /// 按屏幕高度比例缩放
    public var cpfY: CGFloat {
        return CGFloat(self) * yScale
    }
    /// 按屏幕高度比例缩放(不小于原始值)
    public var cpfYUp: CGFloat {
        return CGFloat(self) * yScaleUp
    }
    /// 按屏幕高度比例缩放(不大于原始值)
    public var cpfYDown: CGFloat {
        return CGFloat(self) * yScaleDown
    }
    /// 按平均比例缩放
    public var cpfS: CGFloat {
        return CGFloat(self) * scale
    }
    /// 按平均比例缩放(不小于原始值)
    public var cpfSUp: CGFloat {
        return CGFloat(self) * scaleUp
    }
    /// 按平均比例缩放(不大于原始值)
    public var cpfSDown: CGFloat {
        return CGFloat(self) * scaleDown
    }
}

extension Int: ScaleProtocol {
    /// 按屏幕宽度比例缩放
    public var cpfX: CGFloat {
        return CGFloat(self) * xScale
    }
    /// 按屏幕宽度比例缩放(不小于原始值)
    public var cpfXUp: CGFloat {
        return CGFloat(self) * xScaleUp
    }
    /// 按屏幕宽度比例缩放(不大于原始值)
    public var cpfXDown: CGFloat {
        return CGFloat(self) * xScaleDown
    }
    /// 按屏幕高度比例缩放
    public var cpfY: CGFloat {
        return CGFloat(self) * yScale
    }
    /// 按屏幕高度比例缩放(不小于原始值)
    public var cpfYUp: CGFloat {
        return CGFloat(self) * yScaleUp
    }
    /// 按屏幕高度比例缩放(不大于原始值)
    public var cpfYDown: CGFloat {
        return CGFloat(self) * yScaleDown
    }
    /// 按平均比例缩放
    public var cpfS: CGFloat {
        return CGFloat(self) * scale
    }
    /// 按平均比例缩放(不小于原始值)
    public var cpfSUp: CGFloat {
        return CGFloat(self) * scaleUp
    }
    /// 按平均比例缩放(不大于原始值)
    public var cpfSDown: CGFloat {
        return CGFloat(self) * scaleDown
    }
}

extension CGFloat: ScaleProtocol {
    /// 按屏幕宽度比例缩放
    public var cpfX: CGFloat {
        return self * xScale
    }
    /// 按屏幕宽度比例缩放(不小于原始值)
    public var cpfXUp: CGFloat {
        return self * xScaleUp
    }
    /// 按屏幕宽度比例缩放(不大于原始值)
    public var cpfXDown: CGFloat {
        return self * xScaleDown
    }
    /// 按屏幕高度比例缩放
    public var cpfY: CGFloat {
        return self * yScale
    }
    /// 按屏幕高度比例缩放(不小于原始值)
    public var cpfYUp: CGFloat {
        return self * yScaleUp
    }
    /// 按屏幕高度比例缩放(不大于原始值)
    public var cpfYDown: CGFloat {
        return self * yScaleDown
    }
    /// 按平均比例缩放
    public var cpfS: CGFloat {
        return self * scale
    }
    /// 按平均比例缩放(不小于原始值)
    public var cpfSUp: CGFloat {
        return self * scaleUp
    }
    /// 按平均比例缩放(不大于原始值)
    public var cpfSDown: CGFloat {
        return self * scaleDown
    }
}

extension CGPoint: ScaleProtocol {
    /// x、y分别按屏幕宽、高比例缩放
    public var cpfXY: CGPoint {
        return CGPoint(x: x * xScale, y: y * yScale)
    }
    /// x、y按平均比例缩放
    public var cpfS: CGPoint {
        return CGPoint(x: x * scale, y: y * scale)
    }
}

extension CGSize: ScaleProtocol {
    /// width、height分别按屏幕宽、高比例缩放
    public var cpfXY: CGSize {
        return CGSize(width: width * xScale, height: height * yScale)
    }
    /// width、height按平均比例缩放
    public var cpfS: CGSize {
        return CGSize(width: width * scale, height: height * scale)
    }
}

extension CGRect: ScaleProtocol {
    /// 水平、垂直方向数值分别按屏幕宽、高比例缩放
    public var cpfXY: CGRect {
        return CGRect(x: origin.x * xScale, y: origin.y * yScale, width: width * xScale, height: height * yScale)
    }
    /// 各数值按平均比例缩放
    public var cpfS: CGRect {
        return CGRect(x: origin.x * scale, y: origin.y * scale, width: width * scale, height: height * scale)
    }
}

extension UIEdgeInsets: ScaleProtocol {
    /// 水平、垂直方向数值分别按屏幕宽、高比例缩放
    public var cpfXY: UIEdgeInsets {
        var newInsets = UIEdgeInsets.zero
        newInsets.top = self.top * yScale
        newInsets.left = self.left * xScale
        newInsets.bottom = self.bottom * yScale
        newInsets.right = self.right * xScale
        return newInsets
    }
    /// 各数值按平均比例缩放
    public var cpfS: UIEdgeInsets {
        var newInsets = UIEdgeInsets.zero
        newInsets.top = self.top * scale
        newInsets.left = self.left * scale
        newInsets.bottom = self.bottom * scale
        newInsets.right = self.right * scale
        return newInsets
    }
}






