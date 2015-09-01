//
//  LLPhotoScv.m
//  LLPictureShowDemo
//
//  Created by Eli on 15/8/31.
//  Copyright (c) 2015年 yimouleng. All rights reserved.
//

#import "LLPhotoScv.h"
#import "LLPhotoView.h"

@interface LLPhotoScv () <UIScrollViewDelegate>

@property (nonatomic,strong)  NSArray *imageArray;
@property (nonatomic,strong)  UIScrollView * scrollView;

@end

#define  SCREEN_WIDTH   [UIScreen mainScreen].bounds.size.width
#define  SCREEN_HEIGHT  [UIScreen mainScreen].bounds.size.height

@implementation LLPhotoScv

- (id)initWithFrame:(CGRect)frame andImage:(NSArray *)imageArr
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        _scrollView=[[UIScrollView alloc]initWithFrame:frame];
        self.scrollView.pagingEnabled = YES;
        self.scrollView.showsHorizontalScrollIndicator = NO;
        self.scrollView.showsVerticalScrollIndicator = NO;
        self.scrollView.scrollsToTop = NO;
        self.scrollView.delegate = self;
        
        [self.scrollView setContentOffset:CGPointMake(self.frame.size.width, 0)];
        
        [self addSubview:self.scrollView];

        NSMutableArray *tempArray=[[NSMutableArray alloc] initWithArray:imageArr];
       
        _imageArray=[[NSArray alloc] initWithArray:tempArray];
        
        NSUInteger imgCount = [_imageArray count];
        
        /******设置scrollView的contentSize******/
         self.scrollView.contentSize = CGSizeMake(SCREEN_WIDTH *self.imageArray.count, 0);
        
        
        for (int i=0; i<imgCount; i++) {

            CGRect frame = CGRectMake(self.frame.size.width*i, 0,self.frame.size.width, self.frame.size.height);
            
            LLPhotoView *s = [[LLPhotoView alloc] initWithFrame:frame];
            s.backgroundColor = [UIColor clearColor];
            s.contentSize = CGSizeMake(self.frame.size.width, self.frame.size.height- 64);
            s.delegate = self;
            s.minimumZoomScale = 1.0;
            s.maximumZoomScale = 3.0;
            [s setZoomScale:1.0];
            s.userInteractionEnabled = YES;
            s.showsVerticalScrollIndicator = NO;
            s.showsHorizontalScrollIndicator = NO;
            
            NSString *imgName = self.imageArray[i];
            
            s =  [s initWithFrame:frame andImage:imgName];
            [_scrollView addSubview:s];
        }
    }
    return self;
}
#pragma mark  ------   UIScrollViewDelegate

    /******设置图片大小滚动还原******/
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    CGFloat offset;
    offset = 0.0;
    
    if (scrollView == _scrollView){
        CGFloat x = scrollView.contentOffset.x;
        if (x==offset){
            
        }
        else {
            offset = x;
            for (UIScrollView *s in scrollView.subviews){
                if ([s isKindOfClass:[UIScrollView class]]){
                    [s setZoomScale:1.0];
                }
            }
        }
    }
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    
    for (UIView *v in scrollView.subviews){
       
        return v;
    }
    return nil;
}
@end
