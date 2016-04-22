//
//  MyDataModel.h
//  mvvm学习
//
//  Created by myApplePro01 on 16/4/21.
//  Copyright © 2016年 LSH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyDataModel : NSObject
- (instancetype)initwithSalutation:(NSString *)salutation firstName:(NSString *)firstName lastName:(NSString *)lastName birthdate:(NSString *)birthdate;

@property (nonatomic, copy) NSString *salutation;
@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) NSString *birthdate;

@end
