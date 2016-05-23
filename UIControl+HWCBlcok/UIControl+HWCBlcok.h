//
//  UIControl+HWCBlcok.h
//  fitcess
//
//  Created by 黄文昌 on 16/5/23.
//  Copyright © 2016年 黄文昌. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^HWCTouchUpBlcok)(id sender);

@interface UIControl (HWCBlcok)

@property (nonatomic,copy)HWCTouchUpBlcok hwcTouchUpBlcok;

@end
