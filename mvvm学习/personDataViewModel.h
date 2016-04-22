//
//  personDataViewModel.h
//  MyMVVM 学习
//
//  Created by myApplePro01 on 16/4/21.
//  Copyright © 2016年 LSH. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MyDataModel;
@interface personDataViewModel : NSObject
- (instancetype)initWithPerson:(MyDataModel *)person;

@property (nonatomic, readonly) MyDataModel *person;
@property (nonatomic, readonly) NSString *nameText;
@property (nonatomic, readonly) NSString *birthdateText;

@end
