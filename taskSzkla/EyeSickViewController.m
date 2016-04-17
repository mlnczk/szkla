//
//  EyeSickViewController.m
//  taskSzkla
//
//  Created by Marcin Mielniczek on 4/14/16.
//  Copyright © 2016 Marcin Mielniczek. All rights reserved.
//

#import "EyeSickViewController.h"
#import "Disease.h"


@interface EyeSickViewController ()
@property (strong, nonatomic) IBOutlet UIView *showDiseases;
@property (weak, nonatomic) IBOutlet UIView *viewChangeDisease;
@property (weak, nonatomic) IBOutlet UILabel *labelRightEyeAxis;
@property (weak, nonatomic) IBOutlet UILabel *labelRightEyeCurve;
@property (weak, nonatomic) IBOutlet UILabel *labelRightEyeDiameter;
@property (weak, nonatomic) IBOutlet UILabel *labelRightEyeCylinder;
@property (weak, nonatomic) IBOutlet UILabel *labelRightEyePower;
@property (weak, nonatomic) IBOutlet UILabel *labelLeftEyePower;
@property (weak, nonatomic) IBOutlet UILabel *labelLeftEyeAxis;
@property (weak, nonatomic) IBOutlet UILabel *labelLeftEyeCurve;
@property (weak, nonatomic) IBOutlet UILabel *labelLeftEyeDiameter;
@property (weak, nonatomic) IBOutlet UILabel *labelLeftEyeCylinder;

@end

@implementation EyeSickViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.viewChangeDisease.layer.borderWidth = 1;
    self.viewChangeDisease.layer.borderColor = [UIColor grayColor].CGColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSDictionary *dict = [defaults objectForKey:@"disease"];
    Disease *disease = [[Disease alloc]initWithDictionary:dict error:nil];
    self.labelLeftEyePower.text = disease.leftEyePower;
    self.labelLeftEyeAxis.text = disease.leftEyeAxis;
    self.labelLeftEyeCurve.text = disease.leftEyeCurve;
    self.labelLeftEyeDiameter.text = disease.leftEyeDiameter;
    self.labelLeftEyeCylinder.text = disease.leftEyeCylinder;
    self.labelRightEyePower.text = disease.rightEyePower;
    self.labelRightEyeAxis.text = disease.rightEyeAxis;
    self.labelRightEyeCurve.text = disease.rightEyeCurve;
    self.labelRightEyeDiameter.text = disease.rightEyeDiameter;
    self.labelRightEyeCylinder.text = disease.rightEyeCylinder;

    
    
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
