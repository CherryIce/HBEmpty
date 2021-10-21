//
//  CollectionViewController.m
//  HBEmpty
//
//  Created by YuMao on 2021/10/21.
//

#import "CollectionViewController.h"
#import "UITableView+HBEmpty.h"

@interface CollectionViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,HBEmptyDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (nonatomic , strong) NSMutableArray * dataArray;

@end

@implementation CollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    [self.collectionView reloadData];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"load" style:UIBarButtonItemStylePlain target:self action:@selector(refreshLoad)];
}

- (void) refreshLoad {
    [self.dataArray removeAllObjects];
    for (int i = 0; i < 20; i++) {
        [self.dataArray addObject:@(i)];
    }
    [self.collectionView reloadData];
}

#pragma mark - UITableViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor blueColor];
    return cell;
}

- (UIView *)creatViewWithHeight:(CGFloat)h {
    UIView * v = [[UIView alloc] init];
    v.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, h);
    return v;
}

#pragma mark - HBEmptyViewDelegate
- (UIView *)makePlaceHolderView {
    if (self.dataArray.count == 0) {
        UIView * v = [self creatViewWithHeight:300];
        v.backgroundColor = [UIColor lightGrayColor];
        UILabel * label = [[UILabel alloc] initWithFrame:v.bounds];
        label.font = [UIFont boldSystemFontOfSize:30];
        label.text = @"no data~";
        label.textAlignment = NSTextAlignmentCenter;
        label.textColor = [UIColor whiteColor];
        [v addSubview:label];
        return v;
    }
    return nil;
}

- (BOOL)enableScrollWhenPlaceHolderViewShowing{
    return YES;
}

#pragma mark - getter
- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
}

@end
