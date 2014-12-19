//
//  Fractal.h
//  Procedurallpapers
//
//  Created by [pixelmonster] on 2014-12-19.
//  Copyright (c) 2014 antitypical. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface Fractal : SKNode

+(instancetype) fractal;
-(void) newWallpaperInSize:(CGSize)size onColour:(SKColor*)colour;

@end
