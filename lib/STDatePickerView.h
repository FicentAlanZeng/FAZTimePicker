//
//  STDatePickerView.h
//  TicketingSystem
//
//  Created by imac on 2017/10/17.
//  Copyright © 2017年 JinChuang Technology Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STDatePickerView : UIView

@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) NSDate *minLimitDate;
@property (nonatomic, copy) void (^commitBlock)(NSDate *);

- (void)show;





@end
