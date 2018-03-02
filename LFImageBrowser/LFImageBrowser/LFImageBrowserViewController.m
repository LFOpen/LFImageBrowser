//
//  LFImageBrowserViewController.m
//  LFImageBrowser
//
//  Created by archerLj on 2018/3/2.
//  Copyright © 2018年 com.bocodo.csr. All rights reserved.
//

#import "LFImageBrowserViewController.h"
#import "LFImageBrowserCollectionViewCell.h"

static NSString *cellReuseID = @"LFImageBrowserCollectionViewCellID";
@interface LFImageBrowserViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>
@property (strong, nonatomic) UICollectionView *mainCollectionView;
@property (strong, nonatomic) UIPageControl *pageControl;
@end

@implementation LFImageBrowserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initView];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.mainCollectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForRow:self.currentIndex inSection:0] atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:NO];
}

-(void)initView {
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:self.mainCollectionView];
    if (self.showPageControl) {
        [self.view addSubview:self.pageControl];
    }
}

-(void)pageCountrolAction {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:self.pageControl.currentPage inSection:0];
    [self.mainCollectionView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
}


/******************************************************************/
//             UICollectionViewDelegate
/******************************************************************/
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.imageAddresses.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LFImageBrowserCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellReuseID forIndexPath:indexPath];
    cell.imageAddress = self.imageAddresses[indexPath.row];
    return cell;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
    int index = scrollView.contentOffset.x / self.view.bounds.size.width;
    self.pageControl.currentPage = index;
}


/******************************************************************/
//             Setter && Getter
/******************************************************************/
-(UIPageControl *)pageControl {
    if (_pageControl == nil) {
        _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height - 50.0, self.view.bounds.size.width, 50.0)];
        [_pageControl addTarget:self action:@selector(pageCountrolAction) forControlEvents:UIControlEventTouchUpInside];
        _pageControl.numberOfPages = self.imageAddresses.count;
        _pageControl.currentPage = self.currentIndex;
        _pageControl.pageIndicatorTintColor = self.pageIndicatorTintColor;
        _pageControl.currentPageIndicatorTintColor = self.currentPageIndicatorTintColor;
    }
    return _pageControl;
}

-(UICollectionView *)mainCollectionView {
    if (_mainCollectionView == nil) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.itemSize = self.view.bounds.size;
        layout.minimumLineSpacing = 0.0;
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        _mainCollectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
        [_mainCollectionView setBackgroundColor:self.backGroundColor];
        [_mainCollectionView setPagingEnabled:YES];
        [_mainCollectionView setBounces:NO];
        [_mainCollectionView setShowsHorizontalScrollIndicator:NO];
        [_mainCollectionView registerClass:LFImageBrowserCollectionViewCell.class forCellWithReuseIdentifier:cellReuseID];
        _mainCollectionView.delegate = self;
        _mainCollectionView.dataSource = self;
    }
    return _mainCollectionView;
}
@end
