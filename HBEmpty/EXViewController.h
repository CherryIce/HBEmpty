//
//  EXViewController.h
//  HBEmpty
//
//  Created by hubin on 2021/10/18.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, ExType) {
    ExTypeNormal = 0,
    ExTypeHeader,
    ExTypeLongHeader,
    ExTypeHeaderFooter
};

@interface EXViewController : UIViewController

@property (nonatomic , assign) ExType type;

@end

NS_ASSUME_NONNULL_END
