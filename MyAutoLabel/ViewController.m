//
//  ViewController.m
//  MyAutoLabel
//
//  Created by Petey Mi on 7/30/15.
//  Copyright © 2015 Petey Mi. All rights reserved.
//

#import "ViewController.h"
#import "MyAutoLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MyAutoLabel* label = [[MyAutoLabel alloc] initWithFrame:CGRectMake(100, 100, 100, 0)];
    label.text = @"aaaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbbbbb";
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
