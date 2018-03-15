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
    var yScale: CGFloat { get }
    var scale: CGFloat { get }
}

extension ScaleProtocol {
    var xScale: CGFloat { return CPFUIAdapter.shared.xScale }
    var yScale: CGFloat { return CPFUIAdapter.shared.yScale }
    var scale: CGFloat { return CPFUIAdapter.shared.scale }
}

extension Float: ScaleProtocol {
    public var cpfX: CGFloat {
        return CGFloat(self) * xScale
    }
    public var cpfY: CGFloat {
        return CGFloat(self) * yScale
    }
    public var cpfS: CGFloat {
        return CGFloat(self) * scale
    }
}

extension Double: ScaleProtocol {
    public var cpfX: CGFloat {
        return CGFloat(self) * xScale
    }
    public var cpfY: CGFloat {
        return CGFloat(self) * yScale
    }
    public var cpfS: CGFloat {
        return CGFloat(self) * scale
    }
}

extension Int: ScaleProtocol {
    public var cpfX: CGFloat {
        return CGFloat(self) * xScale
    }
    public var cpfY: CGFloat {
        return CGFloat(self) * yScale
    }
    public var cpfS: CGFloat {
        return CGFloat(self) * scale
    }
}

extension CGFloat: ScaleProtocol {
    public var cpfX: CGFloat {
        return self * xScale
    }
    public var cpfY: CGFloat {
        return self * yScale
    }
    public var cpfS: CGFloat {
        return self * scale
    }
}

extension CGPoint: ScaleProtocol {
    public var cpfXY: CGPoint {
        return CGPoint(x: x * xScale, y: y * yScale)
    }
    public var cpfS: CGPoint {
        return CGPoint(x: x * scale, y: y * scale)
    }
}

extension CGSize: ScaleProtocol {
    public var cpfXY: CGSize {
        return CGSize(width: width * xScale, height: height * yScale)
    }
    public var cpfS: CGSize {
        return CGSize(width: width * scale, height: height * scale)
    }
}

extension CGRect: ScaleProtocol {
    public var cpfXY: CGRect {
        return CGRect(x: origin.x * xScale, y: origin.y * yScale, width: width * xScale, height: height * yScale)
    }
    public var cpfS: CGRect {
        return CGRect(x: origin.x * scale, y: origin.y * scale, width: width * scale, height: height * scale)
    }
}

extension UIEdgeInsets: ScaleProtocol {
    public var cpfXY: UIEdgeInsets {
        var newInsets = UIEdgeInsets.zero
        newInsets.top = self.top * yScale
        newInsets.left = self.left * xScale
        newInsets.bottom = self.bottom * yScale
        newInsets.right = self.right * xScale
        return newInsets
    }
    public var cpfS: UIEdgeInsets {
        var newInsets = UIEdgeInsets.zero
        newInsets.top = self.top * scale
        newInsets.left = self.left * scale
        newInsets.bottom = self.bottom * scale
        newInsets.right = self.right * scale
        return newInsets
    }
}






