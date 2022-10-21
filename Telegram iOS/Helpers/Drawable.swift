//
//  File.swift
//  Telegram iOS
//
//  Created by Eldorbek Nusratov on 21/10/22.
//

import UIKit

protocol Drawable: class {
//    var spiralPoints: [CGPoint] { get set }
//    var displayLink: CADisplayLink? { get set }
//    var timer: Timer? { get set }
//    func hide()
//    func unHide()
    func clear()
//    func startAutoDrawingLink()
//    func startAutoDrawingTimer()
//    func drawSpiralWithLink()
//    func drawSpiralWithTimer()
//    func drawSpiral()
}

extension Drawable where Self: UIView {
    
    var lineWidth: CGFloat { return 5 }
    var lineColor: UIColor { return .white }
            
    // Helper methods
    
    func calculateRectBetween(lastPoint: CGPoint, newPoint: CGPoint) -> CGRect {
        let originX = min(lastPoint.x, newPoint.x) - (lineWidth / 2)
        let originY = min(lastPoint.y, newPoint.y) - (lineWidth / 2)
        
        let maxX = max(lastPoint.x, newPoint.x) + (lineWidth / 2)
        let maxY = max(lastPoint.y, newPoint.y) + (lineWidth / 2)
        
        let width = maxX - originX
        let height = maxY - originY
        
        return CGRect(x: originX, y: originY, width: width, height: height)
    }
    
    func getImageRepresentation() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.isOpaque, 0.0)
        defer { UIGraphicsEndImageContext() }
        if let context = UIGraphicsGetCurrentContext() {
            self.layer.render(in: context)
            let image = UIGraphicsGetImageFromCurrentImageContext()
            return image
        }
        return nil
    }
}
