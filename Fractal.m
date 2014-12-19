//
//  Fractal.m
//  Procedurallpapers
//
//  Created by [pixelmonster] on 2014-12-19.
//  Copyright (c) 2014 antitypical. All rights reserved.
//

#import "Fractal.h"
#import "Functions.h"

@implementation Fractal

+(instancetype) fractal {
	Fractal *frctl = [Fractal new];
	return frctl;
}

-(void) newWallpaperInSize:(CGSize)size onColour:(SKColor*)colour {
	//Number of points along each line
	int fractalPoints = 25;
	//Initialize line to draw
	CGMutablePathRef path = CGPathCreateMutable();
	CGPathMoveToPoint(path, NULL,
					  WALLPAPERRandomInInterval(-size.width, size.width),
					  WALLPAPERRandomInInterval(-size.height, size.height));
	//For each fractal point, connect a random point
	for (int i = 0; i < fractalPoints; i++) {
		CGPathAddLineToPoint(path, NULL,
							 WALLPAPERRandomInInterval(-size.width, size.width),
							 WALLPAPERRandomInInterval(-size.height, size.height));
	}
	//Make a glowy coloured shape with the line
	SKShapeNode *shape = [SKShapeNode node];
	shape.path = path;
	CGPathRelease(path);
	shape.strokeColor = WALLPAPERColourCloseToColour(colour);
	shape.strokeColor = [SKColor colorWithRed:shape.strokeColor.redComponent
										green:shape.strokeColor.greenComponent
										 blue:shape.strokeColor.blueComponent
										alpha:0.5
						 ];
	shape.glowWidth = 200;
	//draw the glowy coloured shape
	[self addChild:shape];
}

@end
