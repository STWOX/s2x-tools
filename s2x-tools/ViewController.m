//
//  ViewController.m
//  s2x-tools
//
//  Created by Xiaorong Niu on 2022/11/28.
//

#import "ViewController.h"
#import "../masonry/Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    UILabel *content =
        [[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, 0)] autorelease];
    [self.view addSubview:content];
    [content setText:@"春眠不觉晓\n处处闻啼鸟\n夜来风雨声\n花落知多少"];
    content.numberOfLines = 0;
    content.textAlignment = NSTextAlignmentCenter;

    [content mas_makeConstraints:^(MASConstraintMaker *make) {
      make.left.equalTo(self.view.mas_left);
      make.right.equalTo(self.view.mas_right);
      make.top.equalTo(self.view.mas_top);
      make.bottom.equalTo(self.view.mas_bottom);
    }];

    [content retain];
}


@end
