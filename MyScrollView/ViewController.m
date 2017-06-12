//
//  ViewController.m
//  MyScrollView
//
//  Created by Elle Ti on 2017-06-12.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//@property (nonatomic) UIView *view;
@property (nonatomic) UIScrollView *scrollView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view = [[UIView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.view];
//    CGRect offScreenFrame = self.view.bounds;
//    offScreenFrame.origin = CGPointMake(0, CGRectMake(self.view.frame));
}


//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

- (void)scrollingView
{
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
//    [self.view addSubview:self.scrollView];
    
}

//- (void)viewDidAppear:(BOOL)animated
//{
//    [super viewDidAppear:animated];
//    self.scrollView.contentSize = CGRectMake(100, 200, 400, 750);
//    [self.view addSubview:self.scrollView];
//}


@end
