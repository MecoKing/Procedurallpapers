//
//  Functions.h
//  Procedurallpapers
//
//  Created by [pixelmonster] on 2014-12-19.
//  Copyright (c) 2014 antitypical. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>

NSUInteger WALLPAPERRandomIntegerInInterval(NSUInteger from, NSUInteger to);
CGFloat WALLPAPERRandomInInterval(CGFloat from, CGFloat to);
SKColor *WALLPAPERColourCloseToColour(SKColor *colour);
SKColor *WALLPAPERRandomDarkColour();