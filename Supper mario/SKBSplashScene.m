//
//  SKBMyScene.m
//  Supper mario
//
//  Created by Phong CNPM on 11/26/14.
//  Copyright (c) 2014 tigger. All rights reserved.
//

#import "SKBSplashScene.h"

@implementation SKBSplashScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
