//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Elle Ti on 2017-08-07.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.contentSize = CGSizeMake(self.frame.size.width, 750);
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(scrolled:)];
        [self addGestureRecognizer:panGesture];
    }
    return self;
}


-(void)scrolled:(UIPanGestureRecognizer *)sender
{
    CGRect rect = self.bounds;
    
    CGFloat maxY = MIN(self.contentSize.height - self.frame.size.height + 20, rect.origin.y - [sender translationInView:self].y);
    
    rect.origin.y = MAX(0, maxY);
    
    [self setBounds:rect];
    
    [sender setTranslation:CGPointZero inView:self];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
