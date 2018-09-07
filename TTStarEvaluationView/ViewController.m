//
//  ViewController.m
//  TTStarEvaluationView
//
//  Created by rollingstoneW on 2018/9/7.
//  Copyright © 2018年 demo. All rights reserved.
//

#import "ViewController.h"
#import "TTStarEvaluationView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    TTStarEvaluationView *star = [[TTStarEvaluationView alloc] init];
    star.starImage = [UIImage imageNamed:@"star"];
    star.starImageForHalf = [UIImage imageNamed:@"half-star"];
    star.unstarImage = [UIImage imageNamed:@"unstar"];
    star.currentScore = 2;
    star.center = CGPointMake(self.view.center.x, self.view.center.y - 30);
    [self.view addSubview:star];

    UILabel *label1 = [[UILabel alloc] init];
    label1.center = CGPointMake(star.center.x, star.center.y + 40);
    [self.view addSubview:label1];
    star.didEvaluationBlock = ^(CGFloat score) {
        label1.text = [NSString stringWithFormat:@"%.1f分", score];
        [label1 sizeToFit];
    };
    star.didEvaluationBlock(star.currentScore);

    TTStarEvaluationView *star2 = [[TTStarEvaluationView alloc] init];
    star2.starImage = [UIImage imageNamed:@"star"];
    star2.scoreMinPace = .2;
    star2.scorePerStar = 2;
    star2.starSpace = 20;
    star2.center = CGPointMake(self.view.center.x, self.view.center.y + 60);
    [self.view addSubview:star2];

    UILabel *label2 = [[UILabel alloc] init];
    label2.center = CGPointMake(star2.center.x, star2.center.y + 40);
    [self.view addSubview:label2];
    star2.didEvaluationBlock = ^(CGFloat score) {
        label2.text = [NSString stringWithFormat:@"%.1f分", score];
        [label2 sizeToFit];
    };
    star2.didEvaluationBlock(star2.currentScore);
}

@end
