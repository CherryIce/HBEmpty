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

@optional

/**
 出现占位图的时候TableView是否能拖动
 @return BOOL
 */
- (BOOL)enableScrollWhenPlaceHolderViewShowing;

@end


#endif /* HBEmptyProtocol_h */
