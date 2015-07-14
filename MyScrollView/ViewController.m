//
//  ViewController.m
//  MyScrollView
//
//  Created by Cody Zazulak on 2015-07-14.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UINavigationControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //red UIView
    UIView *redView = [[UIView alloc] initWithFrame:CGRectZero];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    redView.frame = CGRectMake(redView.frame.origin.x + 20,
                               redView.frame.origin.y + 20,
                               redView.frame.size.width + 100,
                               redView.frame.size.height + 100);
    
    
    //green UIView
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectZero];
    greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:greenView];
    greenView.frame = CGRectMake(greenView.frame.origin.x + 150,
                                 greenView.frame.origin.y + 150,
                                 greenView.frame.size.width + 150,
                                 greenView.frame.size.height + 200);
    
    
    //blue UIView
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectZero];
    redView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    blueView.frame = CGRectMake(blueView.frame.origin.x + 40,
                                blueView.frame.origin.y + 400,
                                blueView.frame.size.width + 200,
                                blueView.frame.size.height + 150);
    
    
    //yellow UIView
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectZero];
    yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:yellowView];
    yellowView.frame = CGRectMake(yellowView.frame.origin.x + 100,
                                  yellowView.frame.origin.y + 600,
                                  yellowView.frame.size.width + 180,
                                  yellowView.frame.size.height + 150);
    
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(didPan:)];
    [self.view addGestureRecognizer:panGesture];
    
    //bounds
    CGRect bounds = self.view.bounds;
    self.view.bounds = CGRectMake(bounds.origin.x,
                                  bounds.origin.y + 100,
                                  bounds.size.width,
                                  bounds.size.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)didPan:(id)sender {
    
    UIPanGestureRecognizer *panGesture = (UIPanGestureRecognizer*)sender;
    
    if (panGesture.state == UIGestureRecognizerStateChanged) {
        CGPoint midpoint = [sender locationInView:self.view];
        int mx = midpoint.x;
        int my = midpoint.y;
        NSLog(@"X:%d - Y:%d", mx, my);
        CGRect bounds = self.view.bounds;
        self.view.bounds = CGRectMake(mx,
                                      my,
                                      bounds.size.width,
                                      bounds.size.height);
    }
    
}

@end
