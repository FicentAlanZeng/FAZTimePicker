//
//  STDatePickerView.m
//  TicketingSystem
//
//  Created by imac on 2017/10/17.
//  Copyright © 2017年 JinChuang Technology Inc. All rights reserved.
//

#import "STDatePickerView.h"
#import "AppDelegate.h"
#define kContannerH 247.0
@interface STDatePickerView ()

@property (nonatomic, strong) UIView *containner;

@property (nonatomic, strong) UIView *tapView;

@property (nonatomic, strong) UIDatePicker *datePicker;

@end
@implementation STDatePickerView


- (instancetype)init
{
    if (self = [super init])
    {
        [self setup];
    }
    return  self;
}
- (void)setDate:(NSDate *)date
{
    _date = date;
    _datePicker.date = _date;
}

- (void)setMinLimitDate:(NSDate *)minLimitDate
{
    _minLimitDate = minLimitDate;
    _datePicker.minimumDate = _minLimitDate;
}

- (void)setup
{
    
    self.backgroundColor = [UIColor clearColor];
    
    _tapView = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    _tapView.userInteractionEnabled = YES;
    _tapView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    [self addSubview:_tapView];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self  action:@selector(dismiss:)];
    [_tapView addGestureRecognizer:tap];
    
    _containner = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, kContannerH)];
    _containner.backgroundColor = [UIColor whiteColor];
    [self addSubview:_containner];
    
    _containner.backgroundColor = [UIColor whiteColor];
    _containner.userInteractionEnabled = YES;
    
    
    UIView *btnContanner = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 50)];
    UIButton *leftBtn = [[UIButton alloc]initWithFrame:CGRectMake(16, 0, 40, 50)];
    [leftBtn setTitle:@"取消" forState:(UIControlStateNormal)];
    leftBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    [leftBtn setTitleColor:UIColorFromRGB(0x333333) forState:(UIControlStateNormal)];
    [btnContanner addSubview:leftBtn];
    [leftBtn addTarget:self  action:@selector(cancel:) forControlEvents:(UIControlEventTouchUpInside)];
    UIButton *rightBtn = [[UIButton alloc]initWithFrame:CGRectMake(SCREEN_WIDTH - 40 -16, 0, 40, 50)];
    [rightBtn setTitle:@"完成" forState:(UIControlStateNormal)];
    
    [rightBtn addTarget:self  action:@selector(commit:) forControlEvents:(UIControlEventTouchUpInside)];
    rightBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    [rightBtn setTitleColor:UIColorFromRGB(0x03A9F4) forState:(UIControlStateNormal)];
    [btnContanner addSubview:rightBtn];
    [_containner addSubview:btnContanner];
    
    _datePicker                    = [[UIDatePicker alloc] init];
    _datePicker.backgroundColor     = [UIColor whiteColor];
    _datePicker.datePickerMode     = UIDatePickerModeDateAndTime;
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    
    CGPoint center = CGPointMake(SCREEN_WIDTH / 2.0, (kContannerH - 50)/2.0 + 50);
    _datePicker.center = center;
    [_containner addSubview:_datePicker];
    
    
}

- (void)commit:(id)sender
{
    [self dismiss:nil];
    if (_commitBlock)
    {
        _commitBlock(_datePicker.date);
    }
}

- (void)cancel:(id)sender
{
    [self dismiss:nil];
}

- (void)show
{
    UIWindow *window = ((AppDelegate *)[UIApplication sharedApplication].delegate).window;
    self.frame = window.bounds;
    [window addSubview:self];
    [UIView animateWithDuration:0.3 animations:^{
        CGRect newF = _containner.frame;
        newF.origin.y = SCREEN_HEIGHT -  newF.size.height;
        _containner.frame = newF;
    }];
}


- (void)dismiss:(UITapGestureRecognizer *)tap
{
    [UIView animateWithDuration:0.3 animations:^{
        CGRect newF = _containner.frame;
        newF.origin.y = SCREEN_HEIGHT;
        _containner.frame = newF;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
    
}


@end
