//
//  DiseaseNames.h
//  taskSzkla
//
//  Created by Marcin Mielniczek on 4/18/16.
//  Copyright © 2016 Marcin Mielniczek. All rights reserved.
//

#import "JSONModel.h"
#import "Disease.h"

@interface DiseaseNames : JSONModel
@property (nonatomic, strong)NSString *Name;
@property (nonatomic, strong)Disease *disease;
@end
