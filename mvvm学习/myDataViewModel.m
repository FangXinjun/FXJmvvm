//
//  myDataViewModel.m
//  mvvm学习
//
//  Created by myApplePro01 on 16/4/21.
//  Copyright © 2016年 LSH. All rights reserved.
//

#import "myDataViewModel.h"

@implementation myDataViewModel
- (instancetype)initWithPerson:(MyDataModel *)person{
    self = [super init];
    if (!self) return nil;
    
    _person = person;
    if (person.salutation.length > 0) {
        _nameText = [NSString stringWithFormat:@"%@ %@ %@", self.person.salutation, self.person.firstName, self.person.lastName];
    } else {
        _nameText = [NSString stringWithFormat:@"%@ %@", self.person.firstName, self.person.lastName];
    }
    _birthdateText = person.birthdate;
    
//    [person addObserver:self forKeyPath:@"salutation" options:NSKeyValueObservingOptionNew context:nil];
//    [person addObserver:self forKeyPath:@"firstName" options:NSKeyValueObservingOptionNew context:nil];
//    [person addObserver:self forKeyPath:@"lastName" options:NSKeyValueObservingOptionNew context:nil];
//    [person addObserver:self forKeyPath:@"birthdate" options:NSKeyValueObservingOptionNew context:nil];

    
    return self;

}


//- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
//{
//    if ([keyPath isEqualToString:@"salutation"]) {
//        NSLog(@"salutation new=%@", [change valueForKey:NSKeyValueChangeNewKey]);
//    }else if ([keyPath isEqualToString:@"salutation"]) {
//        NSLog(@"firstName new=%@", [change valueForKey:NSKeyValueChangeNewKey]);
//    }else if ([keyPath isEqualToString:@"salutation"]) {
//        NSLog(@"lastName  new=%@", [change valueForKey:NSKeyValueChangeNewKey]);
//    }else if ([keyPath isEqualToString:@"salutation"]) {
//        NSLog(@"birthdate new=%@", [change valueForKey:NSKeyValueChangeNewKey]);
//    }
//    else {
//        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
//    }
//}

@end
