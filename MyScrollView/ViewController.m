//
//  ViewController.m
//  MyScrollView
//
//  Created by Elle Ti on 2017-06-12.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "ViewController.h"
#import "ScrollViewController.h"

@interface ViewController ()
@property (nonatomic) ScrollViewController *scrollView;
@property (nonatomic) UIView *redView;
@property (nonatomic) UIView *greenView;
@property (nonatomic) UIView *blueView;
@property (nonatomic) UIView *yellowView;
@property (nonatomic) CGSize contentSize;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.scrollView = [[ScrollViewController alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.scrollView];
    
    self.redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    self.redView.backgroundColor = [UIColor redColor];
    [self.scrollView addSubview:self.redView];
    
    self.greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.scrollView addSubview:self.greenView];
    
    self.blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.scrollView addSubview:self.blueView];
    
    self.yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.scrollView addSubview:self.yellowView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    CGRect rect = self.scrollView.frame;
    rect.origin.y -= 100;
    [self.scrollView setBounds:rect];
}

@end
