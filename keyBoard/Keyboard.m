//
//  Keyboard.m
//  BoothLanch
//
//  Created by ZhaoMing on 16/3/15.
//  Copyright © 2016年 ZhaoMing. All rights reserved.
//

#import "Keyboard.h"

@implementation Keyboard
+(void)encapsulationTextFieldString:(UITextField *)textField  textFieldRang:(NSRange)rang textFieldNumber:(NSInteger)number replaString:(NSString *)string textFieldBlock:(TextFieldBlock)block
{
    
    NSString * toBeString = [textField.text stringByReplacingCharactersInRange:rang withString:string];
    
    if ([self isPureInt:string])
    {
            if (textField.text.length % 5 == 3 && textField.text.length < 22)
            {
                textField.text = [NSString stringWithFormat:@"%@ ",textField.text];
                block( textField.text,YES);
               
            }
            if (toBeString.length >= number)
            {
                toBeString = [toBeString substringToIndex:number];
                textField .text= toBeString;
                block(textField.text,YES);
                [textField resignFirstResponder];
                
                return;
            }

    }else if ([string isEqualToString:@" "])
    {
        if ((textField.text.length - 2) % 5 == 4 && textField.text.length < 22) {
            textField.text = [textField.text substringToIndex:textField.text.length - 1];
            }
    }else
    {
        if (toBeString.length >= number)
        {
            toBeString = [toBeString substringToIndex:number];
            textField .text= toBeString;
            block(textField.text,YES);
            [textField resignFirstResponder];
            
            return;
        }

    }
  
    
}
+ (BOOL)isPureInt:(NSString *)string{
    NSScanner* scan = [NSScanner scannerWithString:string];
    int val;
    return [scan scanInt:&val] && [scan isAtEnd];
}
@end
