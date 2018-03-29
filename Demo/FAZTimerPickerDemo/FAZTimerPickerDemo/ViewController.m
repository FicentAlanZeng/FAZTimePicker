//
//  ViewController.m
//  FAZTimerPickerDemo
//
//  Created by imac on 2018/3/29.
//  Copyright © 2018年 FicentAlanZeng. All rights reserved.
//

#import "ViewController.h"
#import "FAZTimerPicker.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
    
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)btnClicked:(UIButton *)sender {
    
    FAZTimerPicker *datePicker = [[FAZTimerPicker alloc]init];
    datePicker.minLimitDate = [NSDate dateWithTimeIntervalSinceNow:(2*60)*60];
    datePicker.maxLimitDate = [NSDate dateWithTimeIntervalSinceNow:(1024*60)*60];
    datePicker.dateOutputFomatterString = @"yyyy-MM-dd HH:mm";
    datePicker.commitBlock = ^(NSDate *date,NSString *dateString)
    {
//        self.label.text = dateString;
    };
    [datePicker show];
}
    
    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
