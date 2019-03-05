//
//  ViewController.m
//  拷贝
//
//  Created by Jia.Shuchang on 2019/3/5.
//  Copyright © 2019 aoruola. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *array = [NSArray arrayWithObjects:@"1",@"2",@"3", nil];
    
    NSMutableArray *copyMutableArray1 = [array copy];
    NSMutableArray *copyMutableArray2 = [array mutableCopy];
    NSArray *copyArray1 = [array copy];
    NSArray *copyArray2 = [array mutableCopy];
    
    //不可变数组copy为浅拷贝，mutableCopy为深拷贝
    NSLog(@"array === %p",array);//array === 0x600002159470
    NSLog(@"copyMutableArray1 === %p",copyMutableArray1);//copyMutableArray1 === 0x600002159470
    NSLog(@"copyMutableArray2 === %p",copyMutableArray2);//copyMutableArray2 === 0x600002159380
    NSLog(@"copyArray1 === %p",copyArray1);//copyArray1 === 0x600002159470
    NSLog(@"copyArray2 === %p",copyArray2);//copyArray2 === 0x6000021593b0
    
//    //不可变数组copy出来的是不可变数组
//    [copyMutableArray1 addObject:@"4"];//程序报错-[__NSArrayI addObject:]: unrecognized selector sent to instance 0x600002159470
//    NSLog(@"copyMutableArray1==%@",copyMutableArray1);
    
    //不可变数组mutableCopy出来的是可变数组
    [copyMutableArray2 addObject:@"4"];
    NSLog(@"copyMutableArray2==%@",copyMutableArray2);//打印copyMutableArray2==(1,2,3,4)
    
//    //copyArray1和copyArray2已经为nsarray不可变数组接收，因此以下写法属于错误写法
//    [copyArray1 addObject:@"4"];
//    NSLog(@"copyArray1==%@",copyArray1);
//    [copyArray2 addObject:@"4"];
//    NSLog(@"copyArray2==%@",copyArray2);
}

- (void)test{
    /*
     
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"1",@"2",@"3", nil];
    
    NSMutableArray *copyMutableArray1 = [array copy];
    NSMutableArray *copyMutableArray2 = [array mutableCopy];
    NSArray *copyArray1 = [array copy];
    NSArray *copyArray2 = [array mutableCopy];
    
    //测试深浅拷贝：
    //可变数组的拷贝都属于深拷贝，拷贝地址
    NSLog(@"array === %p",array);//array === 0x6000035b70f0
    NSLog(@"copyMutableArray1 === %p",copyMutableArray1);//copyMutableArray1 === 0x6000035b7120
    NSLog(@"copyMutableArray2 === %p",copyMutableArray2);//copyMutableArray2 === 0x6000035b7180
    NSLog(@"copyArray1 === %p",copyArray1);//copyArray1 === 0x6000035b7300
    NSLog(@"copyArray2 === %p",copyArray2);//copyArray2 === 0x6000035b7330
    
    //可变数组copy出来的是不可变数组
    [copyMutableArray1 addObject:@"4"];//程序报错-[__NSArrayI addObject:]: unrecognized selector sent to instance 0x6000035b7120
    NSLog(@"copyMutableArray1==%@",copyMutableArray1);

    //可变数组mutableCopy出来的是可变数组
    [copyMutableArray2 addObject:@"4"];
    NSLog(@"copyMutableArray2==%@",copyMutableArray2);//打印copyMutableArray2==(1,2,3,4)

    //copyArray1和copyArray2已经为nsarray不可变数组接收，因此以下写法属于错误写法
    [copyArray1 addObject:@"4"];
    NSLog(@"copyArray1==%@",copyArray1);
    [copyArray2 addObject:@"4"];
    NSLog(@"copyArray2==%@",copyArray2);
     
     */
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
