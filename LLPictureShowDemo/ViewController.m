//
//  ViewController.m
//  LLPictureShowDemo
//
//  Created by Eli on 15/8/31.
//  Copyright (c) 2015年 yimouleng. All rights reserved.
//

#import "ViewController.h"
#import "LLPhotoScv.h"
@interface ViewController ()

@property (strong, nonatomic)  LLPhotoScv * scrView;

@end
#define  SCREEN_WIDTH   [UIScreen mainScreen].bounds.size.width
#define  SCREEN_HEIGHT  [UIScreen mainScreen].bounds.size.height
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setScr];
    
    
}
-(void)setScr
{
    NSArray * arr = @[@"01.jpg",@"02.jpg",@"03.jpg",@"04.jpg",@"05.jpg"];
    self.scrView =[[LLPhotoScv alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) andImage:arr];
  
    [self.view addSubview:self.scrView];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
