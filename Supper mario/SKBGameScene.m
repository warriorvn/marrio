//
//  SKBGameScene.m
//  Supper mario
//
//  Created by Phong CNPM on 11/27/14.
//  Copyright (c) 2014 tigger. All rights reserved.
//

#import "SKBGameScene.h"
#import "SKBPlayer.h"
@implementation SKBGameScene
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    for(UITouch *touch in touches)
    {
        CGPoint location=[touch locationInNode:self];
        if(!_player)
        {
            
            _player=[SKBPlayer initNewPlayer:self : location];
            
        }
        else if(location.x<=(self.frame.size.width/2))
        {
            [_player runLeft];
        }
        else
        {
            [_player runRight];
        }
    }
    
}
@end
