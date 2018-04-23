//
//  ViewController.m
//  ELBroswer
//
//  Created by apple on 2018/4/23.
//  Copyright © 2018年 getElementByYou. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "ElBrowser.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray * smallArr = @[@"http://img.gafaer.com/Uploads/Comment/2018-04-23/s_5add56d1389f5.jpg",
                           @"http://img.gafaer.com/Uploads/Comment/2018-04-23/s_5add56d137e86.jpg",
                           @"http://img.gafaer.com/Uploads/Comment/2018-04-23/s_5add56d13749f.jpg",
                           @"http://img.gafaer.com/Uploads/Comment/2018-04-23/s_5add56d13676e.jpg",
                           @"http://img.gafaer.com/Uploads/Comment/2018-04-23/s_5add56d135568.jpg",
                           @"http://img.gafaer.com/Uploads/Comment/2018-04-23/s_5add56d135057.jpg",
                           @"http://img.gafaer.com/Uploads/Comment/2018-04-23/s_5add56d13464c.jpg",
                           @"http://img.gafaer.com/Uploads/Comment/2018-04-23/s_5add56d132597.jpg",
                           @"http://img.gafaer.com/Uploads/Comment/2018-04-23/s_5add56d1322a1.jpg"];
    

    
    NSArray * originArr = @[@"http://img.gafaer.com/Uploads/Comment/2018-04-23/l_5add56d1389f5.jpg",
                            @"http://img.gafaer.com/Uploads/Comment/2018-04-23/l_5add56d137e86.jpg",
                            @"http://img.gafaer.com/Uploads/Comment/2018-04-23/l_5add56d13749f.jpg",
                            @"http://img.gafaer.com/Uploads/Comment/2018-04-23/l_5add56d13676e.jpg",
                            @"http://img.gafaer.com/Uploads/Comment/2018-04-23/l_5add56d135568.jpg",
                            @"http://img.gafaer.com/Uploads/Comment/2018-04-23/l_5add56d135057.jpg",
                            @"http://img.gafaer.com/Uploads/Comment/2018-04-23/l_5add56d13464c.jpg",
                            @"http://img.gafaer.com/Uploads/Comment/2018-04-23/l_5add56d132597.jpg",
                            @"http://img.gafaer.com/Uploads/Comment/2018-04-23/l_5add56d1322a1.jpg"];
    
    ElBrowser * browser = [[ElBrowser alloc]init];
    browser.originalUrls = originArr;//大图
    browser.smallUrls = smallArr;//小图
    browser.width = 200; // 控件宽度
    [self.view addSubview:browser];
    [browser mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(200);
    }];
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
