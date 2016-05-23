//
//  UIControl+HWCBlcok.m
//  fitcess
//
//  Created by 黄文昌 on 16/5/23.
//  Copyright © 2016年 黄文昌. All rights reserved.
//

#import "UIControl+HWCBlcok.h"
#import <objc/runtime.h>

const void *HWCTouchUpBlcokKey = "HWCTouchUpBlcokKey";
@implementation UIControl (HWCBlcok)

-(void)setHwcTouchUpBlcok:(HWCTouchUpBlcok)hwcTouchUpBlcok{
    objc_setAssociatedObject(self, HWCTouchUpBlcokKey, hwcTouchUpBlcok, OBJC_ASSOCIATION_COPY);
    [self removeTarget:self action:@selector(touchUp:) forControlEvents:UIControlEventTouchUpInside];
    if (hwcTouchUpBlcok) {
        [self addTarget:self action:@selector(touchUp:) forControlEvents:UIControlEventTouchUpInside];
    }
}
-(HWCTouchUpBlcok)hwcTouchUpBlcok{
    return objc_getAssociatedObject(self, HWCTouchUpBlcokKey);
}
-(void)touchUp:(UIControl *)sender{
    HWCTouchUpBlcok hwcTouchUpBlcok = self.hwcTouchUpBlcok;
    if (hwcTouchUpBlcok) {
        hwcTouchUpBlcok(sender);
    }
}

@end
