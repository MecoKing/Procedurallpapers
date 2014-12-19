//
//  Functions.m
//  Procedurallpapers
//
//  Created by [pixelmonster] on 2014-12-19.
//  Copyright (c) 2014 antitypical. All rights reserved.
//

#import "Functions.h"

NSUInteger WALLPAPERRandomIntegerInInterval(NSUInteger from, NSUInteger to) {
	return random() % (to - from + 1) + from;
}

CGFloat WALLPAPERRandomInInterval(CGFloat from, CGFloat to) {
	CGFloat value = ((CGFloat)random()) / (CGFloat)RAND_MAX;
	return value * fabs(to - from) + from;
}

SKColor *WALLPAPERColourCloseToColour(SKColor *colour) {
	return [SKColor colorWithRed:colour.redComponent + WALLPAPERRandomInInterval(-0.1, 0.1)
						   green:colour.greenComponent + WALLPAPERRandomInInterval(-0.1, 0.1)
							blue:colour.blueComponent + WALLPAPERRandomInInterval(-0.1, 0.1)
						   alpha:1];
}
SKColor *WALLPAPERRandomDarkColour() {
	return [SKColor colorWithRed:WALLPAPERRandomInInterval(0, 0.5) green:WALLPAPERRandomInInterval(0, 0.5) blue:WALLPAPERRandomInInterval(0, 0.5) alpha:1];
}