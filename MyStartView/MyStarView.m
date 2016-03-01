//
//  MyStarView.m
//  CATHAY
//
//  Created by tikeyc on 15/9/28.
//  Copyright © 2015年 tikeyc. All rights reserved.
//

#import "MyStarView.h"


@implementation MyStarView

- (id)initWithFrame:(CGRect)frame withGrayStarImgName:(NSString *)grayStarImgName withColorStarImgName:(NSString *)colorStarImgName{
    self = [super initWithFrame:frame];
    if (self) {
        _grayStarImgName = grayStarImgName;
        _colorStarImgName = colorStarImgName;
        
        //
        [self setImg];
    }
    return self;
}


- (void)awakeFromNib{
    [super awakeFromNib];
    
//    [self initSubViews];
}


- (void)setImg{
    _grayStarImg = [UIImage imageNamed:_grayStarImgName];
    _colorStarImg = [UIImage imageNamed:_colorStarImgName];
    
    //
    [self initSubViews];
}

- (void)initSubViews{
    
    //
    self.height = _grayStarImg.size.height;
    self.width = 5*_grayStarImg.size.width;
    self.backgroundColor = [UIColor colorWithPatternImage:_grayStarImg];
    //
    _colorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, _colorStarImg.size.height)];
    _colorView.backgroundColor = [UIColor colorWithPatternImage:_colorStarImg];
    [self addSubview:_colorView];
}


- (void)setWithGrayStarImgName:(NSString *)grayStarImgName withColorStarImgName:(NSString *)colorStarImgName{
    _grayStarImgName = grayStarImgName;
    _colorStarImgName = colorStarImgName;
    [self setImg];
}


- (void)setRating:(CGFloat)rating{
    _rating = rating;
    //
    if (rating > 5) {
        rating = 5;
    }else if (rating < 0){
        rating = 0;
    }
    _colorView.width = rating*_colorStarImg.size.width;
    if (self.starViewBlock) {
        self.starViewBlock(_rating);
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    if (_isTouch) {
        UITouch *touch = [touches anyObject];
        CGPoint point = [touch locationInView:self];
        CGFloat x = point.x;
        CGFloat numStarFloat = x/_colorStarImg.size.width;
        int numStarInt = 0;
        if (numStarFloat <=1.0) {
            numStarInt = 1;
        }else if (numStarFloat > 1.0){
            numStarInt = (int)(++numStarFloat);
        }
        if (numStarInt > 5) {
            numStarInt = 5;
        }
        //
        //    _colorView.width = numStarInt*_colorStarImg.size.width;
        self.rating = numStarInt;
    }
    
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
}

@end













