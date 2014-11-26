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
        self.backgroundColor=[SKColor blackColor];
        NSString* fileName=@"";
        if(self.frame.size.width==480)
            fileName=@"SewerSplash_480";
        else
            fileName=@"SewerSplash_568";
        SKSpriteNode *splash=[SKSpriteNode spriteNodeWithImageNamed:fileName];
        splash.name=@"splashNode";
        splash.position=CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:splash];
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
