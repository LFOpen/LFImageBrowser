//
//  ViewController.m
//  LFImageBrowser
//
//  Created by archerLj on 2018/3/2.
//  Copyright © 2018年 com.bocodo.csr. All rights reserved.
//

#import "ViewController.h"
#import "LFImageBrowserViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    LFImageBrowserViewController *vc = [[LFImageBrowserViewController alloc] init];
    vc.imageAddresses = @[
                          @"http://d.hiphotos.baidu.com/image/pic/item/96dda144ad345982312b0fb300f431adcbef846a.jpg",
                          @"http://e.hiphotos.baidu.com/image/pic/item/dcc451da81cb39db7aba5070dc160924ab183099.jpg",
                          @"http://g.hiphotos.baidu.com/image/pic/item/902397dda144ad3487bd31a1dca20cf431ad8592.jpg",
                          @"http://e.hiphotos.baidu.com/image/pic/item/ac345982b2b7d0a27091d9b8c7ef76094b369abf.jpg",
                          @"http://a.hiphotos.baidu.com/image/pic/item/64380cd7912397dd21e672225582b2b7d0a2877d.jpg"
                          ];
    vc.currentIndex = 3;
    vc.showPageControl = YES;
    vc.pageIndicatorTintColor = [UIColor lightGrayColor];
    vc.currentPageIndicatorTintColor = [UIColor whiteColor];
    vc.backGroundColor = [UIColor blackColor];
    [self presentViewController:vc animated:YES completion:nil];
}


@end
