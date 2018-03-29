# TimePicker
 A date picker view to choose date and time in Objective-C. it support iOS 8.0 later and it can run in any device,such as iPhone 4~iPhone X


简单实现代码如下:

FAZTimerPicker *datePicker = [[FAZTimerPicker alloc]init];
datePicker.minLimitDate = [NSDate dateWithTimeIntervalSinceNow:(2*60)*60];
datePicker.maxLimitDate = [NSDate dateWithTimeIntervalSinceNow:(1024*60)*60];
datePicker.dateOutputFomatterString = @"yyyy-MM-dd HH:mm";
datePicker.commitBlock = ^(NSDate *date,NSString *dateString)
{
    self.label.text = dateString;
};
[datePicker show];
