//
//  ViewController.m
//  mvvm学习
//
//  Created by myApplePro01 on 16/4/21.
//  Copyright © 2016年 LSH. All rights reserved.
//

#import "ViewController.h"
#import "MyDataModel.h"
//#import "myDataViewModel.m"
#import "personDataViewModel.h"
@interface ViewController ()

@property (nonatomic, strong) MyDataModel        *myModel;
@property (nonatomic, strong) personDataViewModel        *viewModel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *birthdateLabel;

@end

@implementation ViewController

- (MyDataModel *)myModel{
    if (!_myModel) {
        _myModel = [[MyDataModel alloc] initwithSalutation:@"Salutation" firstName:@"Fang" lastName:@"Xinjun" birthdate:@"1989-12-04"];
    }
    return _myModel;
}

- (IBAction)btnclick:(id)sender {
    _myModel.salutation = @"改变";
    _myModel.firstName = @"大方";
}

- (personDataViewModel *)viewModel{
    if (!_viewModel) {
        _viewModel = [[personDataViewModel alloc] initWithPerson:self.myModel];
    }
    return _viewModel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
        
    self.nameLabel.text = self.viewModel.nameText;
    self.birthdateLabel.text = self.viewModel.birthdateText;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
