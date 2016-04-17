//
//  Disease.h
//  taskSzkla
//
//  Created by Rafal Kampa on 17.04.2016.
//  Copyright © 2016 Marcin Mielniczek. All rights reserved.
//

#import "JSONModel.h"

@interface Disease : JSONModel
@property (nonatomic, strong) NSString *Name;
@property (nonatomic, strong) NSString *leftEyePower;
@property (nonatomic, strong) NSString *leftEyeAxis;
@property (nonatomic, strong) NSString *leftEyeCurve;
@property (nonatomic, strong) NSString *leftEyeDiameter;
@property (nonatomic, strong) NSString *leftEyeCylinder;
@property (nonatomic, strong) NSString *rightEyePower;
@property (nonatomic, strong) NSString *rightEyeAxis;
@property (nonatomic, strong) NSString *rightEyeCurve;
@property (nonatomic, strong) NSString *rightEyeDiameter;
@property (nonatomic, strong) NSString *rightEyeCylinder;



@end
