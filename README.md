# TimePicker
 A date picker view to choose date and time in Objective-C. it support iOS 8.0 later and it can run in any device,such as iPhone 4~iPhone X


# 集成代码如下

FAZTimerPicker *datePicker = [[FAZTimerPicker alloc]init];

datePicker.minLimitDate = [NSDate dateWithTimeIntervalSinceNow:7200];

datePicker.maxLimitDate = [NSDate dateWithTimeIntervalSinceNow:14400];

datePicker.dateOutputFomatterString = @"yyyy-MM-dd HH:mm";

datePicker.commitBlock = ^(NSDate *date,NSString *dateString)
{
    self.label.text = dateString;
};

[datePicker show];
