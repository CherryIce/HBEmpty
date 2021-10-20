//
//  HBEmptyProtocol.h
//  HBEmpty
//
//  Created by hubin on 2021/10/18.
//

#ifndef HBEmptyProtocol_h
#define HBEmptyProtocol_h

@protocol HBEmptyDelegate <NSObject>

@required

/**
 无数据占位图
 @return 占位图
 */
- (UIView *)makePlaceHolderView;

/**
 没有更多数据了
 @return 没有更多数据图
 */
- (UIView *)makeNoMoreDataView;

@optional

/**
 出现占位图的时候TableView是否能拖动
 @return BOOL
 */
- (BOOL)enableScrollWhenPlaceHolderViewShowing;

@end


#endif /* HBEmptyProtocol_h */
