//
//  ViewController.m
//  MyScrollView
//
//  Created by Elle Ti on 2017-06-12.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property (nonatomic) MyScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.scrollView = [[MyScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.scrollView];
    
    [self redBox];
    [self greenBox];
    [self blueBox];
    [self yellowBox];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)redBox
{
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.scrollView addSubview:redView];
}

- (void)greenBox
{
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    [self.scrollView addSubview:greenView];
}

- (void)blueBox
{
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    [self.scrollView addSubview:blueView];
}

- (void)yellowBox
{
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [self.scrollView addSubview:yellowView];
}


@end
