//
//  UIView+Gesture.m
//  GestureKit
//
//  Created by YSKJ on 18/1/30.
//  Copyright © 2018年 com.yskj. All rights reserved.
//

#import "UIView+Gesture.h"

#import <objc/runtime.h>

@implementation UIView (Gesture)

-(void)setGestureer:(GestureHander*)Gestureer
{
    objc_setAssociatedObject(self, @"_Gestureer", Gestureer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(GestureHander*)Gestureer
{
    return objc_getAssociatedObject(self, @"_Gestureer");
}

-(void)G_showGesture:(GestureConfiguration*)cnf objDict:(NSDictionary*)objDict;
{
    if (!self.Gestureer) {
        self.Gestureer = [[GestureHander alloc] initWithView:self objDict:objDict configuration:cnf];
    }
    [self.Gestureer drawRectView];
}



@end
