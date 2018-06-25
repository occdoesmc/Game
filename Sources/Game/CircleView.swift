import UIKit

@IBDesignable final class CircleView: UIView {
    @IBInspectable var isInverted: Bool = false {
        didSet {
            updateMask()
        }
    }

    @IBInspectable var circleMargin: CGFloat = 0 {
        didSet {
            updateMask()
        }
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        updateMask()
    }

    private func updateMask() {
        let imageRenderer = UIGraphicsImageRenderer(bounds: bounds)
        let image = imageRenderer.image { context in
            let underlyingContext = context.cgContext
            let circleDiameter = min(bounds.size.width, bounds.size.height)
            let circleRadius = circleDiameter / 2
            let circleRadiusWithMargin = circleRadius - circleMargin
            let circleCenter = CGPoint(x: bounds.midX, y: bounds.midY)
            underlyingContext.beginPath()
            underlyingContext.addArc(center: circleCenter, radius: circleRadiusWithMargin, startAngle: 0, endAngle: .pi * 2, clockwise: true)
            if isInverted {
                let bottomRightCorner = CGPoint(x: bounds.maxX, y: bounds.maxY)
                let bottomLeftCorner = CGPoint(x: 0, y: bounds.maxY)
                let topLeftCorner = bounds.origin
                let topRightCorner = CGPoint(x: bounds.maxX, y: 0)
                underlyingContext.addLines(between: [bottomRightCorner, bottomLeftCorner, topLeftCorner, topRightCorner])
            }
            underlyingContext.fillPath()
        }
        let imageView = UIImageView(image: image)
        imageView.frame = bounds
        mask = imageView
    }
}
