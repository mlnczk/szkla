//
//  MenuViewController.m
//  taskSzkla
//
//  Created by Marcin Mielniczek on 4/13/16.
//  Copyright © 2016 Marcin Mielniczek. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()


@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}
- (IBAction)basketButtonTapped:(id)sender {
    
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"https://www.szkla.com/koszyk.html"]];
}
- (IBAction)pigButtonTapped:(id)sender {
    
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"https://www.szkla.com/promocje.html"]];
}
- (IBAction)mapButtonTapped:(id)sender {
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"https://www.google.pl/maps/place/Novum.+Soczewki+kontaktowe/@50.29566,18.6480713,13z/data=!4m5!1m2!2m1!1sszkla+kontaktowe!3m1!1s0x0000000000000000:0x976b19dd6f249e6e"]];
}
- (IBAction)newBasketButtonTapped:(id)sender {
    
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"https://www.szkla.com"]];
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


