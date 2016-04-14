//
//  LoginViewController.m
//  taskSzkla
//
//  Created by Marcin Mielniczek on 4/13/16.
//  Copyright © 2016 Marcin Mielniczek. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
@property (strong, nonatomic) IBOutlet UITextField *textFieldLogin;
@property (strong, nonatomic) IBOutlet UITextField *textFieldPassword;
@property (strong, nonatomic) IBOutlet UIButton *buttonRegister;
@property (strong, nonatomic) IBOutlet UIButton *buttonNoLogin;
@property (strong, nonatomic) IBOutlet UIButton *buttonLogin;



@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if(![defaults boolForKey:@"registered"]){
        NSLog(@"No user registered");
        
    }else{
        NSLog(@"user is registered");
       
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
}
- (IBAction)registerUser:(id)sender {
    if ([self.textFieldLogin.text isEqualToString:@""] || [self.textFieldPassword.text isEqualToString:@""]){
        
        UIAlertView *error = [[UIAlertView alloc]initWithTitle:@"Oooops" message:@"You must fill all field" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [error show];
        
        
    }else{
        [self registerNewUser];
    }
}
-(void)registerNewUser{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:self.textFieldLogin forKey:@"username"];
    [defaults setObject:self.textFieldPassword forKey:@"password"];
    [defaults setBool:YES forKey:@"registered"];
    
    [defaults synchronize];
    
    UIAlertView *success = [[UIAlertView alloc]initWithTitle:@"Success"     message:@"You are registered" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [success show];
    [self performSegueWithIdentifier:@"showMenu" sender:self];
}
- (IBAction)loginUser:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if ([self.textFieldLogin.text isEqualToString:[defaults objectForKey:@"username" ]] && [self.textFieldPassword.text isEqualToString:[defaults objectForKey:@"password"]]) {
        NSLog(@"Login correct");
        
        [self performSegueWithIdentifier:@"showMenu" sender:self];
        
    }else{
        UIAlertView *error = [[UIAlertView alloc]initWithTitle:@"Oooops" message:@"Your username or password doesnt match" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [error show];
    }
}
- (IBAction)noLoginButtonTapped:(id)sender {
    [self performSegueWithIdentifier:@"showMenu" sender:self];
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
