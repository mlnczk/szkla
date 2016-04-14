//
//  MenuViewController.m
//  taskSzkla
//
//  Created by Marcin Mielniczek on 4/13/16.
//  Copyright © 2016 Marcin Mielniczek. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()
@property (strong, nonatomic) IBOutlet UIButton *buttonShowItems;
@property (strong, nonatomic) IBOutlet UIButton *buttonBuyNew;
@property (strong, nonatomic) IBOutlet UIButton *buttonCallendar;
@property (strong, nonatomic) IBOutlet UIButton *buttonShowMap;
@property (strong, nonatomic) IBOutlet UIButton *buttonMoney;
@property (strong, nonatomic) IBOutlet UIButton *buttonEyeSick;

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
- (IBAction)showMap:(id)sender {
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"https://www.google.pl/maps/place/EUVIC+Sp.+z+o.o./@50.2908845,18.7018441,17z/data=!4m7!1m4!3m3!1s0x471131a07ce3c06f:0x72c3c9ee8891e42c!2sPrzewozowa,+Gliwice!3b1!3m1!1s0x0000000000000000:0x6d63aefcbed6cfaf"]];
}
- (IBAction)eyeSickTapped:(id)sender {
    [self performSegueWithIdentifier:@"showEyeSick" sender:self];
}
- (IBAction)showCashTapped:(id)sender {
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"https://www.szkla.com/"]];
}
- (IBAction)showCalendarTapped:(id)sender {
    [self performSegueWithIdentifier:@"showCalendar" sender:self];
}
- (IBAction)showShowItemsTapped:(id)sender {
    [self performSegueWithIdentifier:@"showShowItems" sender:self];
}
- (IBAction)newBuyTapped:(id)sender {
    [self performSegueWithIdentifier:@"showNewBuy" sender:self];
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
