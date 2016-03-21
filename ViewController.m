//
//  ViewController.m
//  textFieldKeyBoard
//
//  Created by ZhaoMing on 16/3/21.
//  Copyright © 2016年 ZhaoMing. All rights reserved.
//

#import "ViewController.h"
#import "Keyboard.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *TextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    
    
}
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    [Keyboard encapsulationTextFieldString:textField textFieldRang:range textFieldNumber:11 replaString:string textFieldBlock:^(NSString *textFieldString, BOOL flag) {
        NSLog(@"text===== %@",textFieldString);
    }];
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
