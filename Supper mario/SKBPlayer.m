//
//  SKBPlayer.m
//  Supper mario
//
//  Created by Phong CNPM on 11/29/14.
//  Copyright (c) 2014 tigger. All rights reserved.
//

#import "SKBPlayer.h"

@implementation SKBPlayer
+(SKBPlayer *)initNewPlayer:(SKScene *)onScene :(CGPoint)location
{
    SKTexture *r1=[SKTexture textureWithImageNamed:@"Player_Right1"];
    SKTexture *r2=[SKTexture textureWithImageNamed:@"Player_Right2"];
    SKTexture *r3=[SKTexture textureWithImageNamed:@"Player_Right3"];
    SKTexture *r4=[SKTexture textureWithImageNamed:@"Player_Right4"];
    NSArray *arr=@[r1,r2,r3,r4];
    //Khởi tạo object
    SKBPlayer *player=[SKBPlayer spriteNodeWithTexture:r1];
    player.position=location;
    //Tạo các ani
    SKAction *ani=[SKAction animateWithTextures:arr timePerFrame:0.1];
    SKAction *loop=[SKAction repeatActionForever:ani];
    [player runAction:loop];
    //Add node vào scene
    [onScene addChild:player];
    return player;
}
-(void)runLeft
{
    SKAction *moveLeft=[SKAction moveByX:-kPlayerRunningIncrement y:0 duration:1];
    SKAction *loopLeft=[SKAction repeatActionForever:moveLeft];
    [self runAction:loopLeft];
}
-(void)runRight
{
    SKAction *moveRight=[SKAction moveByX:kPlayerRunningIncrement y:0 duration:1];
    SKAction *loopRight=[SKAction repeatActionForever:moveRight];
    [self runAction:loopRight];
}
@end
