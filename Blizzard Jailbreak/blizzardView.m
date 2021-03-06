//
//  blizzardView.m
//  Blizzard Jailbreak
//
//  Created by GeoSn0w on 8/10/20.
//  Copyright © 2020 GeoSn0w. All rights reserved.
//

#import "blizzardView.h"
#include "blizzardJailbreak.h"


@interface blizzardView () <UITextFieldDelegate>

@end

@implementation blizzardView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nonceField.delegate = self;
    printf("Blizzard Jailbreak\nby GeoSn0w (@FCE365)\n\nAn Open-Source Jailbreak for you to study and dissect :-)\n");
}
- (IBAction)blizzardInit:(id)sender {
    _blizzardInit.enabled = NO;
    [_blizzardInit setTitle:@"JAILBREAKING..." forState:UIControlStateDisabled];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
             [self performSegueWithIdentifier:@"vc" sender:self];
        });
    });
    
}
- (IBAction)injectSettingsUI:(id)sender {
    [self performSegueWithIdentifier:@"settingsView" sender:self];
}
- (IBAction)saveJailbreakSettings:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}
@end
