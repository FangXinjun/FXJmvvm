//
//  MyDataModel.m
//  mvvm学习
//
//  Created by myApplePro01 on 16/4/21.
//  Copyright © 2016年 LSH. All rights reserved.
//

#import "MyDataModel.h"

@implementation MyDataModel
- (instancetype)initwithSalutation:(NSString *)salutation firstName:(NSString *)firstName lastName:(NSString *)lastName birthdate:(NSString *)birthdate{
    _salutation = salutation;
    _firstName = firstName;
    _lastName = lastName;
    _birthdate = birthdate;
    return self;
}

@end
