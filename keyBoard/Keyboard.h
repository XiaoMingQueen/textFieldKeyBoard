//
//  Keyboard.h
//  BoothLanch
//
//  Created by ZhaoMing on 16/3/15.
//  Copyright © 2016年 ZhaoMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


/**
 *  用来判断是否有字符串并且输出字符串
 *
 *  @param textFieldString 传的字符串
 *  @param flag            判断是否有这个字符串
 */
typedef void(^TextFieldBlock)(NSString *textFieldString,BOOL flag);

@interface Keyboard : NSObject<UITextFieldDelegate>

+(void)encapsulationTextFieldString:(UITextField *)textField  textFieldRang:(NSRange)rang textFieldNumber:(NSInteger)number replaString:(NSString *)string textFieldBlock:(TextFieldBlock)block;
@end
