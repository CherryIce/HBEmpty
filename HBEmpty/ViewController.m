//
//  ViewController.m
//  HBEmpty
//
//  Created by hubin on 2021/10/18.
//

#import "ViewController.h"
#import "EXViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)buttonClick:(UIButton *)sender {
    EXViewController * ctl = [[EXViewController alloc] init];
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:ctl];
    ctl.type = sender.tag;
    [self presentViewController:nav animated:YES completion:nil];
}

@end
