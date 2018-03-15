# CPFUIAdapter
iOS Swift UI适配

## 使用方法

```Swift
// 支持Pods
pod 'CPFUIAdapter', '~>0.0.1'
```

```Swift
// 引入对应模块
import CPFUIAdapter
```

## 示例

```Swift
// 水平缩放系数cpfX，垂直缩放系数cpfY，平均缩放系数cpfS
let offsetX = 10.cpfX
let offsetY = 20.0.cpfY
let offset = CGFloat(33).cpfS

// Point
let p = CGPoint(x: 10, y: 20)
print("Point:", p.cpfXY, p.cpfS)
// Size
let s = CGSize(width: 33, height: 44)
print("Size:", s.cpfXY, s.cpfS)
// Rect
let r = CGRect(x: 25, y: 86, width: 334, height: 256)
print("Rect:", r.cpfXY, r.cpfS)
// UIEdgeInsets
let insets = UIEdgeInsets(top: 89, left: 27, bottom: 64, right: 93)
print("EdgeInsets:", insets.cpfXY, insets.cpfS)

```

## 注意
- 默认基础尺寸为iPhon6(375, 665)(pt), 可指定其他设计参照尺寸
- 缩放规则
    - 宽度取当前屏幕宽度与参照屏幕宽度比
    - 高度
        - 当前 >= 参照时，缩放系数为1，保证大屏幕显示更多内容
        - 当前 < 参照时，缩放系数与宽度缩放系数相同，保证小屏幕不会显得界面内容过大
    - 平均取当前屏幕宽高与参照屏幕宽高比例平均值，适用于字体大小或图片按比例缩放