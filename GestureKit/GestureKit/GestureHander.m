//
//  GestureHander.m
//  GestureKit
//
//  Created by YSKJ on 18/1/30.
//  Copyright © 2018年 com.yskj. All rights reserved.
//

#import "GestureHander.h"

#import "GestureConfiguration.h"

@implementation GestureHander

-(instancetype)initWithView:(UIView*)targetView objDict:(NSDictionary*)objDict configuration:(GestureConfiguration*)gesCnf
{
    if (self == [super init]) {
        
        _gesCnf = gesCnf ? gesCnf:[[GestureConfiguration alloc] init];
        
        _targetView = targetView;
        
        _objDict = objDict;
    }
    return self;
}

-(void)drawRectView;
{
     NSLog(@"objDict=%@",_objDict);
}

@end
