//
//  SKBPlayer.h
//  Supper mario
//
//  Created by Phong CNPM on 11/29/14.
//  Copyright (c) 2014 tigger. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#define kPlayerRunningIncrement 100
@interface SKBPlayer : SKSpriteNode
+(SKBPlayer*)initNewPlayer:(SKScene*) onScene :(CGPoint)location;
-(void)runRight;
-(void)runLeft;
@end
