//
//  GameScene.m
//  Procedurallpapers
//
//  Created by [pixelmonster] on 2014-12-19.
//  Copyright (c) 2014 antitypical. All rights reserved.
//

#import "GameScene.h"
#import "Fractal.h"
#import "Functions.h"

@implementation GameScene

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    SKLabelNode *startLabel = [SKLabelNode labelNodeWithFontNamed:@"Helvetica"];
    
    startLabel.text = @"Click to generate wallpapers";
    startLabel.fontSize = 20;
    startLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    
    [self addChild:startLabel];
}

-(void)mouseDown:(NSEvent *)theEvent {
     /* Called when a mouse click occurs */
    [self removeAllChildren];
	self.backgroundColor = WALLPAPERRandomDarkColour();
	Fractal *tempFractal = [Fractal fractal];
	[self addChild:tempFractal];
	for (int i = 0; i < WALLPAPERRandomIntegerInInterval(2, 5); i++) {
		[tempFractal newWallpaperInSize:self.size onColour:self.backgroundColor];
	}
}



-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
