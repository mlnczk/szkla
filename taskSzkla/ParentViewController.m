//
//  ParentViewController.m
//  taskSzkla
//
//  Created by Marcin Mielniczek on 4/15/16.
//  Copyright © 2016 Marcin Mielniczek. All rights reserved.
//

#import "ParentViewController.h"

@interface ParentViewController ()

@end

@implementation ParentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createMiddleNavigationBar];
    [self createLeftNavigationBar];
    [self createRightNavigationBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)createMiddleNavigationBar{
    
    UIImage *image = [UIImage imageNamed:@"ic_action_logo_toolbar"];
    
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:image];

}
-(void)createLeftNavigationBar{
    UIImage *defaultImg = [UIImage imageNamed:@"toolbar_button_menu"];
    
    UIButton *customButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 65, 35)];
    [customButton setBackgroundImage:defaultImg forState:UIControlStateNormal];
    
    [customButton addTarget:self action:@selector(openSideMenu) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *defaultItem = [[UIBarButtonItem alloc] initWithCustomView:customButton];
    
    //defniuje pozycje
    self.navigationItem.leftBarButtonItem = defaultItem;
}
-(void)openSideMenu{
    NSLog(@"cokolwiek?");
}
-(void)createRightNavigationBar{
    UIImage *defaultImg = [UIImage imageNamed:@"toolbar_button_back"];

    UIButton *customButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 65, 35)];
    [customButton setBackgroundImage:defaultImg forState:UIControlStateNormal];
    
    [customButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *defaultItem = [[UIBarButtonItem alloc] initWithCustomView:customButton];
    
    //defniuje pozycje
    self.navigationItem.rightBarButtonItem = defaultItem;
}
//PRZEJSCIE DO TYLU
-(void)goBack{
    [self.navigationController popViewControllerAnimated:YES];
    
}
    



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
