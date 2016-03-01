//
//  MyStarView.h
//  CATHAY
//
//  Created by tikeyc on 15/9/28.
//  Copyright © 2015年 tikeyc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UIViewExt.h"

typedef void (^StarViewBlock)(NSInteger rating);

@interface MyStarView : UIView

@property (nonatomic,copy)NSString *grayStarImgName;
@property (nonatomic,copy)NSString *colorStarImgName;

@property (nonatomic,strong)UIImage *grayStarImg;
@property (nonatomic,copy)UIImage *colorStarImg;


@property (nonatomic,strong)UIView *colorView;


@property (nonatomic,assign)CGFloat rating;
@property (nonatomic,copy)StarViewBlock starViewBlock;

@property (nonatomic,assign)BOOL isTouch;

- (id)initWithFrame:(CGRect)frame withGrayStarImgName:(NSString *)grayStarImgName withColorStarImgName:(NSString *)colorStarImgName;

- (void)setWithGrayStarImgName:(NSString *)grayStarImgName withColorStarImgName:(NSString *)colorStarImgName;

//- (void)setRating:(NSInteger)rating;

@end
