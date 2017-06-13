//
//  ScrollViewController.m
//  MyScrollView
//
//  Created by Elle Ti on 2017-06-12.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "ScrollViewController.h"

@interface ScrollViewController ()

@end

@implementation ScrollViewController

//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

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

- (instancetype)initWithCoder:(NSCoder *)coder //storyboard
{
    self = [super initWithCoder:coder];
    if (self) {
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

@end
