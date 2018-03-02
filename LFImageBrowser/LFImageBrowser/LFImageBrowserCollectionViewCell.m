//
//  LFImageBrowserCollectionViewCell.m
//  LFImageBrowser
//
//  Created by archerLj on 2018/3/2.
//  Copyright © 2018年 com.bocodo.csr. All rights reserved.
//

#import "LFImageBrowserCollectionViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface LFImageBrowserCollectionViewCell()
@property (strong, nonatomic) UIImageView *imageView;
@end

@implementation LFImageBrowserCollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self.contentView addSubview:self.imageView];
    }
    return self;
}

-(void)setImageAddress:(NSString *)imageAddress {
    
    if (imageAddress != nil) {
        _imageAddress = imageAddress;
        [self.imageView sd_setImageWithURL:[NSURL URLWithString:imageAddress]];
    }
}

/******************************************************************/
//             Setter && Getter
/******************************************************************/
-(UIImageView *)imageView {
    if (_imageView == nil) {
        _imageView = [[UIImageView alloc] initWithFrame:self.contentView.bounds];
        _imageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _imageView;
}
@end
