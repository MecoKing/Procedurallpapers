#import "GameScene.h"
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

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
