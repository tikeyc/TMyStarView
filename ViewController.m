//
//  ViewController.m
//  TMyStarView
//
//  Created by tikeyc on 16/3/1.
//  Copyright © 2016年 tikeyc. All rights reserved.
//

#import "ViewController.h"

#import "MyStarView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet MyStarView *xibStarView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //1
    MyStarView *starView = [[MyStarView alloc] initWithFrame:CGRectMake(100, 100, 0, 0) withGrayStarImgName:@"farm_star_frame" withColorStarImgName:@"farm_srat_fill"];
    
    [self.view addSubview:starView];
    starView.rating = 4.2;
    //2
    [self.xibStarView setWithGrayStarImgName:@"fr_big_star_grey" withColorStarImgName:@"fr_big_srat_yellow"];
    self.xibStarView.rating = 4.8;
    self.xibStarView.isTouch = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
