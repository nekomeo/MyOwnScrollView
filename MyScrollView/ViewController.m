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
@property (nonatomic) UIView *redView;
@property (nonatomic) UIView *greenView;
@property (nonatomic) UIView *blueView;
@property (nonatomic) UIView *yellowView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    self.greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.greenView];
    
    self.blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.blueView];
    
    self.yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.yellowView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
