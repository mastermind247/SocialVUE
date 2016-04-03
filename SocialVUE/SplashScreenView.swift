//
//  SplashScreenView.swift
//
//  Code generated using QuartzCode 1.39.10 on 4/3/16.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class SplashScreenView: UIView {
	
	var updateLayerValueForCompletedAnimation : Bool = false
	var completionBlocks : Dictionary<CAAnimation, (Bool) -> Void> = [:]
	var layers : Dictionary<String, AnyObject> = [:]
	
	
	
	//MARK: - Life Cycle
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupProperties()
		setupLayers()
	}
	
	required init?(coder aDecoder: NSCoder)
	{
		super.init(coder: aDecoder)
		setupProperties()
		setupLayers()
	}
	
	override var frame: CGRect{
		didSet{
			setupLayerFrames()
		}
	}
	
	override var bounds: CGRect{
		didSet{
			setupLayerFrames()
		}
	}
	
	func setupProperties(){
		
	}
	
	func setupLayers(){
		self.backgroundColor = UIColor(red:0.961, green: 0.965, blue:0.969, alpha:1)
		
		let Page = CALayer()
		self.layer.addSublayer(Page)
		layers["Page"] = Page
		let Group2 = CALayer()
		Page.addSublayer(Group2)
		layers["Group2"] = Group2
		let Group = CALayer()
		Group2.addSublayer(Group)
		layers["Group"] = Group
		let Oval = CAShapeLayer()
		Group.addSublayer(Oval)
		layers["Oval"] = Oval
		let CombinedShape = CAShapeLayer()
		Group.addSublayer(CombinedShape)
		layers["CombinedShape"] = CombinedShape
		let CombinedShape2 = CAShapeLayer()
		Group.addSublayer(CombinedShape2)
		layers["CombinedShape2"] = CombinedShape2
		let Oval1Copy = CAShapeLayer()
		Group.addSublayer(Oval1Copy)
		layers["Oval1Copy"] = Oval1Copy
		
		resetLayerPropertiesForLayerIdentifiers(nil)
		setupLayerFrames()
	}
	
	func resetLayerPropertiesForLayerIdentifiers(layerIds: [String]!){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if layerIds == nil || layerIds.contains("Page"){
			let Page = layers["Page"] as! CALayer
			Page.shadowColor   = UIColor(red:0, green: 0, blue:0, alpha:0.333).CGColor
			Page.shadowOpacity = 0.33
			Page.shadowOffset  = CGSizeMake(5, 5)
			Page.shadowRadius  = 10
		}
		if layerIds == nil || layerIds.contains("Oval"){
			let Oval = layers["Oval"] as! CAShapeLayer
			Oval.fillColor = UIColor(red:0.286, green: 0.282, blue:0.282, alpha:1).CGColor
			Oval.lineWidth = 0
		}
		if layerIds == nil || layerIds.contains("CombinedShape"){
			let CombinedShape = layers["CombinedShape"] as! CAShapeLayer
			CombinedShape.fillColor = UIColor(red:0.949, green: 0.439, blue:0.392, alpha:1).CGColor
			CombinedShape.lineWidth = 0
		}
		if layerIds == nil || layerIds.contains("CombinedShape2"){
			let CombinedShape2 = layers["CombinedShape2"] as! CAShapeLayer
			CombinedShape2.fillColor = UIColor(red:0.0588, green: 0.549, blue:0.541, alpha:1).CGColor
			CombinedShape2.lineWidth = 0
		}
		if layerIds == nil || layerIds.contains("Oval1Copy"){
			let Oval1Copy = layers["Oval1Copy"] as! CAShapeLayer
			Oval1Copy.fillColor = UIColor(red:0.0588, green: 0.549, blue:0.541, alpha:1).CGColor
			Oval1Copy.lineWidth = 0
		}
		
		CATransaction.commit()
	}
	
	func setupLayerFrames(){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if let Page : CALayer = layers["Page"] as? CALayer{
			Page.frame = CGRectMake(0.26064 * Page.superlayer!.bounds.width, 0.34991 * Page.superlayer!.bounds.height, 0.47872 * Page.superlayer!.bounds.width, 0.30019 * Page.superlayer!.bounds.height)
		}
		
		if let Group2 : CALayer = layers["Group2"] as? CALayer{
			Group2.frame = CGRectMake(0, 0,  Group2.superlayer!.bounds.width,  Group2.superlayer!.bounds.height)
		}
		
		if let Group : CALayer = layers["Group"] as? CALayer{
			Group.frame = CGRectMake(0, 0,  Group.superlayer!.bounds.width,  Group.superlayer!.bounds.height)
		}
		
		if let Oval : CAShapeLayer = layers["Oval"] as? CAShapeLayer{
			Oval.frame = CGRectMake(0, 0.39286 * Oval.superlayer!.bounds.height, 0.24 * Oval.superlayer!.bounds.width, 0.21429 * Oval.superlayer!.bounds.height)
			Oval.path  = OvalPathWithBounds((layers["Oval"] as! CAShapeLayer).bounds).CGPath;
		}
		
		if let CombinedShape : CAShapeLayer = layers["CombinedShape"] as? CAShapeLayer{
			CombinedShape.frame = CGRectMake(0.36 * CombinedShape.superlayer!.bounds.width, 0.17857 * CombinedShape.superlayer!.bounds.height, 0.24 * CombinedShape.superlayer!.bounds.width, 0.64286 * CombinedShape.superlayer!.bounds.height)
			CombinedShape.path  = CombinedShapePathWithBounds((layers["CombinedShape"] as! CAShapeLayer).bounds).CGPath;
		}
		
		if let CombinedShape2 : CAShapeLayer = layers["CombinedShape2"] as? CAShapeLayer{
			CombinedShape2.frame = CGRectMake(0.76 * CombinedShape2.superlayer!.bounds.width, 0, 0.24 * CombinedShape2.superlayer!.bounds.width, 0.64286 * CombinedShape2.superlayer!.bounds.height)
			CombinedShape2.path  = CombinedShape2PathWithBounds((layers["CombinedShape2"] as! CAShapeLayer).bounds).CGPath;
		}
		
		if let Oval1Copy : CAShapeLayer = layers["Oval1Copy"] as? CAShapeLayer{
			Oval1Copy.frame = CGRectMake(0.76 * Oval1Copy.superlayer!.bounds.width, 0.78571 * Oval1Copy.superlayer!.bounds.height, 0.24 * Oval1Copy.superlayer!.bounds.width, 0.21429 * Oval1Copy.superlayer!.bounds.height)
			Oval1Copy.path  = Oval1CopyPathWithBounds((layers["Oval1Copy"] as! CAShapeLayer).bounds).CGPath;
		}
		
		CATransaction.commit()
	}
	
	//MARK: - Animation Setup
	
	func addSplashAnimationAnimation(){
		addSplashAnimationAnimationCompletionBlock(nil)
	}
	
	func addSplashAnimationAnimationCompletionBlock(completionBlock: ((finished: Bool) -> Void)?){
		if completionBlock != nil{
			let completionAnim = CABasicAnimation(keyPath:"completionAnim")
			completionAnim.duration = 2
			completionAnim.delegate = self
			completionAnim.setValue("splashAnimation", forKey:"animId")
			completionAnim.setValue(false, forKey:"needEndAnim")
			layer.addAnimation(completionAnim, forKey:"splashAnimation")
			if let anim = layer.animationForKey("splashAnimation"){
				completionBlocks[anim] = completionBlock
			}
		}
		
		let fillMode : String = kCAFillModeForwards
		
		let Oval = layers["Oval"] as! CAShapeLayer
		
		////Oval animation
		let OvalTransformAnim            = CAKeyframeAnimation(keyPath:"transform")
		OvalTransformAnim.values         = [NSValue(CATransform3D: CATransform3DConcat(CATransform3DMakeScale(0, 0, 0), CATransform3DMakeTranslation(-1.1111 * Oval.superlayer!.bounds.width, 0, 0))), 
			 NSValue(CATransform3D: CATransform3DIdentity)]
		OvalTransformAnim.keyTimes       = [0, 1]
		OvalTransformAnim.duration       = 0.571
		OvalTransformAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionDefault)
		
		let OvalOpacityAnim            = CAKeyframeAnimation(keyPath:"opacity")
		OvalOpacityAnim.values         = [0, 1]
		OvalOpacityAnim.keyTimes       = [0, 1]
		OvalOpacityAnim.duration       = 0.571
		OvalOpacityAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionDefault)
		
		let OvalSplashAnimationAnim : CAAnimationGroup = QCMethod.groupAnimations([OvalTransformAnim, OvalOpacityAnim], fillMode:fillMode)
		Oval.addAnimation(OvalSplashAnimationAnim, forKey:"OvalSplashAnimationAnim")
		
		let CombinedShape = layers["CombinedShape"] as! CAShapeLayer
		
		////CombinedShape animation
		let CombinedShapeTransformAnim      = CAKeyframeAnimation(keyPath:"transform")
		CombinedShapeTransformAnim.values   = [NSValue(CATransform3D: CATransform3DConcat(CATransform3DMakeScale(0, 0, 0), CATransform3DMakeTranslation(-1.1111 * CombinedShape.superlayer!.bounds.width, 0, 0))), 
			 NSValue(CATransform3D: CATransform3DConcat(CATransform3DMakeScale(0, 0, 0), CATransform3DMakeTranslation(-0.30556 * CombinedShape.superlayer!.bounds.width, 0, 0))), 
			 NSValue(CATransform3D: CATransform3DIdentity)]
		CombinedShapeTransformAnim.keyTimes = [0, 0.5, 1]
		CombinedShapeTransformAnim.duration = 1.14
		CombinedShapeTransformAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionDefault)
		
		let CombinedShapeSplashAnimationAnim : CAAnimationGroup = QCMethod.groupAnimations([CombinedShapeTransformAnim], fillMode:fillMode)
		CombinedShape.addAnimation(CombinedShapeSplashAnimationAnim, forKey:"CombinedShapeSplashAnimationAnim")
		
		let CombinedShape2 = layers["CombinedShape2"] as! CAShapeLayer
		
		////CombinedShape2 animation
		let CombinedShape2TransformAnim      = CAKeyframeAnimation(keyPath:"transform")
		CombinedShape2TransformAnim.values   = [NSValue(CATransform3D: CATransform3DConcat(CATransform3DMakeScale(0, 0, 0), CATransform3DMakeTranslation(-1.1111 * CombinedShape2.superlayer!.bounds.width, 0, 0))), 
			 NSValue(CATransform3D: CATransform3DConcat(CATransform3DMakeScale(0, 0, 0), CATransform3DMakeTranslation(-0.30556 * CombinedShape2.superlayer!.bounds.width, 0.14961 * CombinedShape2.superlayer!.bounds.height, 0))), 
			 NSValue(CATransform3D: CATransform3DIdentity)]
		CombinedShape2TransformAnim.keyTimes = [0, 0.667, 1]
		CombinedShape2TransformAnim.duration = 1.71
		CombinedShape2TransformAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionDefault)
		
		let CombinedShape2OpacityAnim      = CAKeyframeAnimation(keyPath:"opacity")
		CombinedShape2OpacityAnim.values   = [0, 0, 1]
		CombinedShape2OpacityAnim.keyTimes = [0, 0.667, 1]
		CombinedShape2OpacityAnim.duration = 1.71
		CombinedShape2OpacityAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionDefault)
		
		let CombinedShape2SplashAnimationAnim : CAAnimationGroup = QCMethod.groupAnimations([CombinedShape2TransformAnim, CombinedShape2OpacityAnim], fillMode:fillMode)
		CombinedShape2.addAnimation(CombinedShape2SplashAnimationAnim, forKey:"CombinedShape2SplashAnimationAnim")
		
		let Oval1Copy = layers["Oval1Copy"] as! CAShapeLayer
		
		////Oval1Copy animation
		let Oval1CopyTransformAnim            = CAKeyframeAnimation(keyPath:"transform")
		Oval1CopyTransformAnim.values         = [NSValue(CATransform3D: CATransform3DMakeScale(0, 0, 0)), 
			 NSValue(CATransform3D: CATransform3DConcat(CATransform3DMakeScale(0, 0, 0), CATransform3DMakeTranslation(0, -0.27428 * Oval1Copy.superlayer!.bounds.height, 0))), 
			 NSValue(CATransform3D: CATransform3DIdentity)]
		Oval1CopyTransformAnim.keyTimes       = [0, 0.857, 1]
		Oval1CopyTransformAnim.duration       = 2
		Oval1CopyTransformAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionDefault)
		
		let Oval1CopyOpacityAnim            = CAKeyframeAnimation(keyPath:"opacity")
		Oval1CopyOpacityAnim.values         = [0, 0, 1]
		Oval1CopyOpacityAnim.keyTimes       = [0, 0.857, 1]
		Oval1CopyOpacityAnim.duration       = 2
		Oval1CopyOpacityAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionDefault)
		
		let Oval1CopySplashAnimationAnim : CAAnimationGroup = QCMethod.groupAnimations([Oval1CopyTransformAnim, Oval1CopyOpacityAnim], fillMode:fillMode)
		Oval1Copy.addAnimation(Oval1CopySplashAnimationAnim, forKey:"Oval1CopySplashAnimationAnim")
	}
	
	//MARK: - Animation Cleanup
	
	override func animationDidStop(anim: CAAnimation, finished flag: Bool){
		if let completionBlock = completionBlocks[anim]{
			completionBlocks.removeValueForKey(anim)
			if (flag && updateLayerValueForCompletedAnimation) || anim.valueForKey("needEndAnim") as! Bool{
				updateLayerValuesForAnimationId(anim.valueForKey("animId") as! String)
				removeAnimationsForAnimationId(anim.valueForKey("animId") as! String)
			}
			completionBlock(flag)
		}
	}
	
	func updateLayerValuesForAnimationId(identifier: String){
		if identifier == "splashAnimation"{
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["Oval"] as! CALayer).animationForKey("OvalSplashAnimationAnim"), theLayer:(layers["Oval"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["CombinedShape"] as! CALayer).animationForKey("CombinedShapeSplashAnimationAnim"), theLayer:(layers["CombinedShape"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["CombinedShape2"] as! CALayer).animationForKey("CombinedShape2SplashAnimationAnim"), theLayer:(layers["CombinedShape2"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["Oval1Copy"] as! CALayer).animationForKey("Oval1CopySplashAnimationAnim"), theLayer:(layers["Oval1Copy"] as! CALayer))
		}
	}
	
	func removeAnimationsForAnimationId(identifier: String){
		if identifier == "splashAnimation"{
			(layers["Oval"] as! CALayer).removeAnimationForKey("OvalSplashAnimationAnim")
			(layers["CombinedShape"] as! CALayer).removeAnimationForKey("CombinedShapeSplashAnimationAnim")
			(layers["CombinedShape2"] as! CALayer).removeAnimationForKey("CombinedShape2SplashAnimationAnim")
			(layers["Oval1Copy"] as! CALayer).removeAnimationForKey("Oval1CopySplashAnimationAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			(layer as! CALayer).removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func OvalPathWithBounds(bound: CGRect) -> UIBezierPath{
		let OvalPath = UIBezierPath()
		let minX = CGFloat(bound.minX), minY = bound.minY, w = bound.width, h = bound.height;
		
		OvalPath.moveToPoint(CGPointMake(minX + w, minY + 0.5 * h))
		OvalPath.addCurveToPoint(CGPointMake(minX + 0.5 * w, minY + h), controlPoint1:CGPointMake(minX + w, minY + 0.77614 * h), controlPoint2:CGPointMake(minX + 0.77614 * w, minY + h))
		OvalPath.addCurveToPoint(CGPointMake(minX, minY + 0.5 * h), controlPoint1:CGPointMake(minX + 0.22386 * w, minY + h), controlPoint2:CGPointMake(minX, minY + 0.77614 * h))
		OvalPath.addCurveToPoint(CGPointMake(minX + 0.5 * w, minY), controlPoint1:CGPointMake(minX, minY + 0.22386 * h), controlPoint2:CGPointMake(minX + 0.22386 * w, minY))
		OvalPath.addCurveToPoint(CGPointMake(minX + w, minY + 0.5 * h), controlPoint1:CGPointMake(minX + 0.77614 * w, minY), controlPoint2:CGPointMake(minX + w, minY + 0.22386 * h))
		OvalPath.closePath()
		OvalPath.moveToPoint(CGPointMake(minX + w, minY + 0.5 * h))
		
		return OvalPath;
	}
	
	func CombinedShapePathWithBounds(bound: CGRect) -> UIBezierPath{
		let CombinedShapePath = UIBezierPath()
		let minX = CGFloat(bound.minX), minY = bound.minY, w = bound.width, h = bound.height;
		
		CombinedShapePath.moveToPoint(CGPointMake(minX + 0.38085 * w, minY + 0.38889 * h))
		CombinedShapePath.addCurveToPoint(CGPointMake(minX + 0.13766 * w, minY + 0.28152 * h), controlPoint1:CGPointMake(minX + 0.32151 * w, minY + 0.32986 * h), controlPoint2:CGPointMake(minX + 0.18049 * w, minY + 0.29652 * h))
		CombinedShapePath.addCurveToPoint(CGPointMake(minX, minY + 0.16667 * h), controlPoint1:CGPointMake(minX + 0.05236 * w, minY + 0.25162 * h), controlPoint2:CGPointMake(minX, minY + 0.21118 * h))
		CombinedShapePath.addCurveToPoint(CGPointMake(minX + 0.5 * w, minY), controlPoint1:CGPointMake(minX, minY + 0.07462 * h), controlPoint2:CGPointMake(minX + 0.22386 * w, minY))
		CombinedShapePath.addCurveToPoint(CGPointMake(minX + w, minY + 0.16667 * h), controlPoint1:CGPointMake(minX + 0.77614 * w, minY), controlPoint2:CGPointMake(minX + w, minY + 0.07462 * h))
		CombinedShapePath.addCurveToPoint(CGPointMake(minX + 0.86499 * w, minY + 0.28058 * h), controlPoint1:CGPointMake(minX + w, minY + 0.21072 * h), controlPoint2:CGPointMake(minX + 0.94873 * w, minY + 0.25078 * h))
		CombinedShapePath.addCurveToPoint(CGPointMake(minX + 0.62139 * w, minY + 0.38889 * h), controlPoint1:CGPointMake(minX + 0.82171 * w, minY + 0.29598 * h), controlPoint2:CGPointMake(minX + 0.68214 * w, minY + 0.32956 * h))
		CombinedShapePath.addCurveToPoint(CGPointMake(minX + 0.57456 * w, minY + 0.45402 * h), controlPoint1:CGPointMake(minX + 0.59093 * w, minY + 0.41864 * h), controlPoint2:CGPointMake(minX + 0.57773 * w, minY + 0.43933 * h))
		CombinedShapePath.addCurveToPoint(CGPointMake(minX + 0.66667 * w, minY + 0.38889 * h), controlPoint1:CGPointMake(minX + 0.56508 * w, minY + 0.49788 * h), controlPoint2:CGPointMake(minX + 0.69019 * w, minY + 0.37069 * h))
		CombinedShapePath.addCurveToPoint(CGPointMake(minX + 0.62139 * w, minY + 0.61111 * h), controlPoint1:CGPointMake(minX + 0.70184 * w, minY + 0.41655 * h), controlPoint2:CGPointMake(minX + 0.5 * w, minY + 0.50743 * h))
		CombinedShapePath.addCurveToPoint(CGPointMake(minX + 0.85255 * w, minY + 0.71515 * h), controlPoint1:CGPointMake(minX + 0.66988 * w, minY + 0.66257 * h), controlPoint2:CGPointMake(minX + 0.81457 * w, minY + 0.70256 * h))
		CombinedShapePath.addCurveToPoint(CGPointMake(minX + w, minY + 0.83333 * h), controlPoint1:CGPointMake(minX + 0.94362 * w, minY + 0.74534 * h), controlPoint2:CGPointMake(minX + w, minY + 0.78714 * h))
		CombinedShapePath.addCurveToPoint(CGPointMake(minX + 0.5 * w, minY + h), controlPoint1:CGPointMake(minX + w, minY + 0.92538 * h), controlPoint2:CGPointMake(minX + 0.77614 * w, minY + h))
		CombinedShapePath.addCurveToPoint(CGPointMake(minX, minY + 0.83333 * h), controlPoint1:CGPointMake(minX + 0.22386 * w, minY + h), controlPoint2:CGPointMake(minX, minY + 0.92538 * h))
		CombinedShapePath.addCurveToPoint(CGPointMake(minX + 0.15639 * w, minY + 0.71226 * h), controlPoint1:CGPointMake(minX, minY + 0.78565 * h), controlPoint2:CGPointMake(minX + 0.06008 * w, minY + 0.74264 * h))
		CombinedShapePath.addCurveToPoint(CGPointMake(minX + 0.38085 * w, minY + 0.61111 * h), controlPoint1:CGPointMake(minX + 0.20208 * w, minY + 0.69785 * h), controlPoint2:CGPointMake(minX + 0.31609 * w, minY + 0.66746 * h))
		CombinedShapePath.addCurveToPoint(CGPointMake(minX + 0.33333 * w, minY + 0.61111 * h), controlPoint1:CGPointMake(minX + 0.5 * w, minY + 0.50743 * h), controlPoint2:CGPointMake(minX + 0.31087 * w, minY + 0.62937 * h))
		CombinedShapePath.addCurveToPoint(CGPointMake(minX + 0.38085 * w, minY + 0.38889 * h), controlPoint1:CGPointMake(minX + 0.30126 * w, minY + 0.58629 * h), controlPoint2:CGPointMake(minX + 0.5 * w, minY + 0.50743 * h))
		CombinedShapePath.closePath()
		CombinedShapePath.moveToPoint(CGPointMake(minX + 0.38085 * w, minY + 0.38889 * h))
		
		return CombinedShapePath;
	}
	
	func CombinedShape2PathWithBounds(bound: CGRect) -> UIBezierPath{
		let CombinedShape2Path = UIBezierPath()
		let minX = CGFloat(bound.minX), minY = bound.minY, w = bound.width, h = bound.height;
		
		CombinedShape2Path.moveToPoint(CGPointMake(minX + 0.38085 * w, minY + 0.38889 * h))
		CombinedShape2Path.addCurveToPoint(CGPointMake(minX + 0.13766 * w, minY + 0.28152 * h), controlPoint1:CGPointMake(minX + 0.32151 * w, minY + 0.32986 * h), controlPoint2:CGPointMake(minX + 0.18049 * w, minY + 0.29652 * h))
		CombinedShape2Path.addCurveToPoint(CGPointMake(minX, minY + 0.16667 * h), controlPoint1:CGPointMake(minX + 0.05236 * w, minY + 0.25162 * h), controlPoint2:CGPointMake(minX, minY + 0.21118 * h))
		CombinedShape2Path.addCurveToPoint(CGPointMake(minX + 0.5 * w, minY), controlPoint1:CGPointMake(minX, minY + 0.07462 * h), controlPoint2:CGPointMake(minX + 0.22386 * w, minY))
		CombinedShape2Path.addCurveToPoint(CGPointMake(minX + w, minY + 0.16667 * h), controlPoint1:CGPointMake(minX + 0.77614 * w, minY), controlPoint2:CGPointMake(minX + w, minY + 0.07462 * h))
		CombinedShape2Path.addCurveToPoint(CGPointMake(minX + 0.86499 * w, minY + 0.28058 * h), controlPoint1:CGPointMake(minX + w, minY + 0.21072 * h), controlPoint2:CGPointMake(minX + 0.94873 * w, minY + 0.25078 * h))
		CombinedShape2Path.addCurveToPoint(CGPointMake(minX + 0.62139 * w, minY + 0.38889 * h), controlPoint1:CGPointMake(minX + 0.82171 * w, minY + 0.29598 * h), controlPoint2:CGPointMake(minX + 0.68214 * w, minY + 0.32956 * h))
		CombinedShape2Path.addCurveToPoint(CGPointMake(minX + 0.57456 * w, minY + 0.45402 * h), controlPoint1:CGPointMake(minX + 0.59093 * w, minY + 0.41864 * h), controlPoint2:CGPointMake(minX + 0.57773 * w, minY + 0.43933 * h))
		CombinedShape2Path.addCurveToPoint(CGPointMake(minX + 0.66667 * w, minY + 0.38889 * h), controlPoint1:CGPointMake(minX + 0.56508 * w, minY + 0.49788 * h), controlPoint2:CGPointMake(minX + 0.69019 * w, minY + 0.37069 * h))
		CombinedShape2Path.addCurveToPoint(CGPointMake(minX + 0.62139 * w, minY + 0.61111 * h), controlPoint1:CGPointMake(minX + 0.70184 * w, minY + 0.41655 * h), controlPoint2:CGPointMake(minX + 0.5 * w, minY + 0.50743 * h))
		CombinedShape2Path.addCurveToPoint(CGPointMake(minX + 0.85255 * w, minY + 0.71515 * h), controlPoint1:CGPointMake(minX + 0.66988 * w, minY + 0.66257 * h), controlPoint2:CGPointMake(minX + 0.81457 * w, minY + 0.70256 * h))
		CombinedShape2Path.addCurveToPoint(CGPointMake(minX + w, minY + 0.83333 * h), controlPoint1:CGPointMake(minX + 0.94362 * w, minY + 0.74534 * h), controlPoint2:CGPointMake(minX + w, minY + 0.78714 * h))
		CombinedShape2Path.addCurveToPoint(CGPointMake(minX + 0.5 * w, minY + h), controlPoint1:CGPointMake(minX + w, minY + 0.92538 * h), controlPoint2:CGPointMake(minX + 0.77614 * w, minY + h))
		CombinedShape2Path.addCurveToPoint(CGPointMake(minX, minY + 0.83333 * h), controlPoint1:CGPointMake(minX + 0.22386 * w, minY + h), controlPoint2:CGPointMake(minX, minY + 0.92538 * h))
		CombinedShape2Path.addCurveToPoint(CGPointMake(minX + 0.15639 * w, minY + 0.71226 * h), controlPoint1:CGPointMake(minX, minY + 0.78565 * h), controlPoint2:CGPointMake(minX + 0.06008 * w, minY + 0.74264 * h))
		CombinedShape2Path.addCurveToPoint(CGPointMake(minX + 0.38085 * w, minY + 0.61111 * h), controlPoint1:CGPointMake(minX + 0.20208 * w, minY + 0.69785 * h), controlPoint2:CGPointMake(minX + 0.31609 * w, minY + 0.66746 * h))
		CombinedShape2Path.addCurveToPoint(CGPointMake(minX + 0.33333 * w, minY + 0.61111 * h), controlPoint1:CGPointMake(minX + 0.5 * w, minY + 0.50743 * h), controlPoint2:CGPointMake(minX + 0.31087 * w, minY + 0.62937 * h))
		CombinedShape2Path.addCurveToPoint(CGPointMake(minX + 0.38085 * w, minY + 0.38889 * h), controlPoint1:CGPointMake(minX + 0.30126 * w, minY + 0.58629 * h), controlPoint2:CGPointMake(minX + 0.5 * w, minY + 0.50743 * h))
		CombinedShape2Path.closePath()
		CombinedShape2Path.moveToPoint(CGPointMake(minX + 0.38085 * w, minY + 0.38889 * h))
		
		return CombinedShape2Path;
	}
	
	func Oval1CopyPathWithBounds(bound: CGRect) -> UIBezierPath{
		let Oval1CopyPath = UIBezierPath()
		let minX = CGFloat(bound.minX), minY = bound.minY, w = bound.width, h = bound.height;
		
		Oval1CopyPath.moveToPoint(CGPointMake(minX + w, minY + 0.5 * h))
		Oval1CopyPath.addCurveToPoint(CGPointMake(minX + 0.5 * w, minY + h), controlPoint1:CGPointMake(minX + w, minY + 0.77614 * h), controlPoint2:CGPointMake(minX + 0.77614 * w, minY + h))
		Oval1CopyPath.addCurveToPoint(CGPointMake(minX, minY + 0.5 * h), controlPoint1:CGPointMake(minX + 0.22386 * w, minY + h), controlPoint2:CGPointMake(minX, minY + 0.77614 * h))
		Oval1CopyPath.addCurveToPoint(CGPointMake(minX + 0.5 * w, minY), controlPoint1:CGPointMake(minX, minY + 0.22386 * h), controlPoint2:CGPointMake(minX + 0.22386 * w, minY))
		Oval1CopyPath.addCurveToPoint(CGPointMake(minX + w, minY + 0.5 * h), controlPoint1:CGPointMake(minX + 0.77614 * w, minY), controlPoint2:CGPointMake(minX + w, minY + 0.22386 * h))
		Oval1CopyPath.closePath()
		Oval1CopyPath.moveToPoint(CGPointMake(minX + w, minY + 0.5 * h))
		
		return Oval1CopyPath;
	}
	
	
}
