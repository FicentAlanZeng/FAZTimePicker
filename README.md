# FAZTimePicker
 A date picker view to choose date and time in Objective-C. it support iOS 8.0 later and it can run in any device,such as iPhone 4~iPhone X


# 集成代码如下
增加头文件

``` Objective-C
#import "FAZTimePicker.h"
```
代码实现
``` Objective-C

FAZTimerPicker *datePicker = [[FAZTimerPicker alloc]init];

datePicker.minLimitDate = [NSDate dateWithTimeIntervalSinceNow:7200];

datePicker.maxLimitDate = [NSDate dateWithTimeIntervalSinceNow:14400];

datePicker.dateOutputFomatterString = @"yyyy-MM-dd HH:mm";

datePicker.commitBlock = ^(NSDate *date,NSString *dateString)
{
    self.label.text = dateString;
};

[datePicker show];

```

# screenShots
![Alt text](https://github.com/FicentAlanZeng/TimePicker/blob/master/image.gif?raw=true)
