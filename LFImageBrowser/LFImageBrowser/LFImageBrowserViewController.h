//
//  LFImageBrowserViewController.h
//  LFImageBrowser
//
//  Created by archerLj on 2018/3/2.
//  Copyright © 2018年 com.bocodo.csr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LFImageBrowserViewController : UIViewController
@property (strong, nonatomic) NSArray *imageAddresses;
@property (assign, nonatomic) NSUInteger currentIndex;
@property (strong, nonatomic) UIColor *backGroundColor;
@property (strong, nonatomic) UIColor *pageIndicatorTintColor;
@property (strong, nonatomic) UIColor *currentPageIndicatorTintColor;
@property (assign, nonatomic) Boolean showPageControl;
@end
