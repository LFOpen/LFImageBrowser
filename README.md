# LFImageBrowser
图片浏览

# Cocoapods 集成
因为要使用私有库，所以需要同时指定私有库和Cocoapod公有库的地址
```
source 'https://github.com/LFOpen/LFOpen.git'
source 'https://github.com/CocoaPods/Specs.git'

target 'XXXX' do
  pod 'LFImageBrowser'
end
```

# 使用方法

```
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
```
