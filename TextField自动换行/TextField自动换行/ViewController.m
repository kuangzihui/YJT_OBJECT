//
//  ViewController.m
//  TextField自动换行
//
//  Created by yangqijia on 16/8/11.
//  Copyright © 2016年 yangqijia. All rights reserved.
//

#import "ViewController.h"
#import "CustomTextField.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //设置leftView
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
    imageView.image = [UIImage imageNamed:@"image.jpg"];
    imageView.clipsToBounds = YES;
    imageView.layer.cornerRadius = imageView.frame.size.height/2;
    //初始化
    CustomTextField *textField = [[CustomTextField alloc]initWithFrame:CGRectMake(10, 40, 300, 30) placeholder:@"自动换行textField" clear:YES leftView:imageView fontSize:20.0];
    textField.layer.borderWidth = 1.0;
    textField.layer.borderColor = [UIColor purpleColor].CGColor;
    textField.layer.cornerRadius = textField.frame.size.height/2;
    
    [self.view addSubview:textField];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
