//
//  MyAutoLabel.m
//  MyAutoLabel
//
//  Created by Petey Mi on 7/30/15.
//  Copyright © 2015 Petey Mi. All rights reserved.
//

#import "MyAutoLabel.h"


@implementation MyAutoLabel
@synthesize enableTouchExpand = _enableTouchExpand;

-(id)initWithCoder:(nonnull NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self initialiser];
    }
    return self;
}
-(id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self initialiser];
    }
    return self;
}
-(void)awakeFromNib
{
    [super awakeFromNib];
    [self initialiser];
}

-(void)initialiser
{
    self.enableTouchExpand = YES;
    self.userInteractionEnabled = YES;
    self.backgroundColor = [UIColor redColor];
}

-(void)setText:(NSString * __nullable)text
{
    [super setText:text];
    CGSize size = [text boundingRectWithSize:CGSizeMake(self.bounds.size.width, MAXFLOAT) options:NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:self.font} context:nil].size;
    CGRect rect = self.frame;
    rect.size.height = size.height;
    self.frame = rect;
}
-(void)touchesEnded:(nonnull NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event
{
    if (touches.count == 1) {
        UITouch* touch = touches.anyObject;
        CGPoint point = [touch locationInView:self];
        if (CGRectContainsPoint(self.bounds, point)) {
            CGSize size = [self.text boundingRectWithSize:CGSizeMake(self.bounds.size.width, MAXFLOAT) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:self.font} context:nil].size;
            CGRect rect = self.frame;
            rect.size.height = size.height;
            self.frame = rect;
            self.numberOfLines = 0;
        }
    }
}

@end
