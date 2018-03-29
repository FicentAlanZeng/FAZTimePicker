//
//  FAZTimerPicker.h
//  FAZTimerPickerDemo
//
//  Created by imac on 2018/3/29.
//  Copyright © 2018年 FicentAlanZeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FAZTimerPicker : UIView
/**     date
 *      current date
 *      当前选中的date
 */
@property (nonatomic, strong) NSDate *date;
    
/**     minLimitDate
 *      the min date you can choose
 *      可选择的最小date
 */
@property (nonatomic, strong) NSDate *minLimitDate;
    
/**     maxLimitDate
 *      the max date you can choose
 *      可选择的最大date
 */
@property (nonatomic, strong) NSDate *maxLimitDate;
    
/**     dateFomatterString
 *      默认'yyyy-MM-dd HH:mm'
 */
@property (nonatomic, strong) NSString *dateOutputFomatterString;
/**     commitBlock
 *      选择后点击完成触发
 *      dateString与fomatter有关，默认fomatter为'yyyy-MM-dd HH:mm'
 */
@property (nonatomic, copy) void (^commitBlock)(NSDate *,NSString *dateString);

/**     show
 *      控件显示
 */

- (void)show;
    
    
/**     setDate
 *      set default date
 *      指定当前选中的date
 */
- (void)setDate:(NSDate *)date;
    
@end
