//
//  ViewController.m
//  HBEmpty
//
//  Created by hubin on 2021/10/18.
//

#import "ViewController.h"
#import "EXViewController.h"
#import "CollectionViewController.h"
#import "HBEmpty-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)buttonClick:(UIButton *)sender {
//    EXViewController * ctl = [[EXViewController alloc] init];
//    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:ctl];
//    ctl.type = sender.tag;
//    [self presentViewController:nav animated:YES completion:nil];
    
    TableViewController * ctl2= [[TableViewController alloc] init];
    UINavigationController * nav2 = [[UINavigationController alloc] initWithRootViewController:ctl2];
    [self presentViewController:nav2 animated:YES completion:nil];
}

- (IBAction)collectionClick:(UIButton *)sender {
    CollectionViewController * ctl = [[CollectionViewController alloc] init];
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:ctl];
    [self presentViewController:nav animated:YES completion:nil];
}


@end
