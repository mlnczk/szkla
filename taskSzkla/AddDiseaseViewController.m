//
//  AddDiseaseViewController.m
//  taskSzkla
//
//  Created by Marcin Mielniczek on 4/15/16.
//  Copyright © 2016 Marcin Mielniczek. All rights reserved.
//

#import "AddDiseaseViewController.h"


@interface AddDiseaseViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonBackChanges;
@property (weak, nonatomic) IBOutlet UIButton *buttonSaveChanges;
@property (weak, nonatomic) IBOutlet UITextField *textFieldName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldLeftEyePower;
@property (weak, nonatomic) IBOutlet UITextField *textFieldLeftEyeAxis;
@property (weak, nonatomic) IBOutlet UITextField *textFieldLeftEyeCurve;
@property (weak, nonatomic) IBOutlet UITextField *textFieldLeftEyeDiameter;
@property (weak, nonatomic) IBOutlet UITextField *textFieldLeftEyeCylinder;
@property (weak, nonatomic) IBOutlet UITextField *textFieldRightEyePower;
@property (weak, nonatomic) IBOutlet UITextField *textFieldRightEyeAxis;
@property (weak, nonatomic) IBOutlet UITextField *textFieldRightEyeCurve;
@property (weak, nonatomic) IBOutlet UITextField *textFieldRightEyeDiameter;
@property (weak, nonatomic) IBOutlet UITextField *textFieldRightEyeCylinder;

@end

@implementation AddDiseaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.buttonBackChanges.layer.cornerRadius = 4;
    self.buttonSaveChanges.layer.cornerRadius = 4;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)saveThis:(id)sender {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSArray *defaultArray = [defaults objectForKey:@"disease"];
                             
                             NSMutableArray *array = [NSMutableArray new];
                             //jesli tablica nie istnieje, tworzysz nowa
                             if (!array){
                                 array = [NSMutableArray new];
                             }else{
                                 array = defaultArray.mutableCopy;
                             }
    
    NSMutableDictionary *name = [NSMutableDictionary new];
    [name setObject:self.textFieldName.text forKey:@"name"];
    
NSMutableDictionary *dict = [NSMutableDictionary new];
    
[dict setObject:self.textFieldLeftEyePower.text forKey:@"leftEyePower"];
[dict setObject:self.textFieldLeftEyeAxis.text forKey:@"leftEyeAxis"];
[dict setObject:self.textFieldLeftEyeCurve.text forKey:@"leftEyeCurve"];
[dict setObject:self.textFieldLeftEyeDiameter.text forKey:@"leftEyeDiameter"];
[dict setObject:self.textFieldLeftEyeCylinder.text forKey:@"leftEyeCylinder"];
[dict setObject:self.textFieldRightEyePower.text forKey:@"rightEyePower"];
[dict setObject:self.textFieldRightEyeAxis.text forKey:@"rightEyeAxis"];
[dict setObject:self.textFieldRightEyeCurve.text forKey:@"rightEyeCurve"];
[dict setObject:self.textFieldRightEyeDiameter.text forKey:@"rightEyeDiameter"];
[dict setObject:self.textFieldRightEyeCylinder.text forKey:@"rightEyeCylinder"];
// [dict setObject:self.textFieldName forKey:@"Name"];
    
    [name setObject:dict forKey:@"disease"];
    [array addObject:name];
    [defaults setObject:array forKey:@"disease"];
    [defaults synchronize];
    
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
