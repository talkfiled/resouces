//
//  ViewController.m
//  animation
//
//  Created by ycl on 2017/5/5.
//  Copyright © 2017年 ycl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *blueView;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn:(id)sender {
    CGRect frame = _blueView.frame;
    frame.origin =CGPointMake(300, 300);
    _blueView.frame = frame;
}

- (IBAction)startanim:(id)sender {
    [UIView animateWithDuration:5 animations:^{
        CGRect frame = _blueView.frame;
        frame.size =CGSizeMake(200, 200);
        _blueView.frame = frame;
    }];
    
}
- (IBAction)originAnim:(id)sender {
    [UIView animateWithDuration:5 animations:^{
        CGRect frame = _blueView.frame;
        frame.origin =CGPointMake(200, 200);
        _blueView.frame = frame;
    }];
}

- (IBAction)alphaAnim:(id)sender {
    
    [UIView animateWithDuration:5 animations:^{
        _blueView.alpha = 0;
    }];

}
- (IBAction)reset:(id)sender {
    CGRect frame = CGRectMake(100, 100, 100, 100);
    _blueView.frame = frame;
    _blueView.alpha = 1;
}

@end
