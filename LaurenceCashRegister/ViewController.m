//
//  ViewController.m
//  LaurenceCashRegister
//
//  Created by Laurence Wingo on 11/27/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

@synthesize changeToBeGiven;
@synthesize purchasePrice;
@synthesize customerAmountGave;
@synthesize theTextField;
-(IBAction)tender:(id)sender{
    AudioServicesPlaySystemSound(SoundID);
    
    
    float customerPaid = ([customerAmountGave.text floatValue]);
    float itemPrice = customerPaid - ([purchasePrice.text floatValue]);
    

      
    
   if (itemPrice < 0)
   { NSLog(@"Error!");
       changeToBeGiven.text = [[NSString alloc] initWithFormat:@"ERROR"];}
    
    else if (itemPrice == 0)
    {
        NSLog(@"ZERO");
        changeToBeGiven.text = [[NSString alloc] initWithFormat:@"ZERO"];
    }
       
       else
 
           
           
    changeToBeGiven.text = [[NSString alloc] initWithFormat:@"%.2f", itemPrice];
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSURL *buttonURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"12112301" ofType:@"mp3"]];
    
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)buttonURL, &SoundID);
    
    
        
    

    
}



- (BOOL)textField:(UITextField *)theTextField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSCharacterSet *myCharSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    for (int i = 0; i < [string length]; i++) {
        unichar c = [string characterAtIndex:i];
        if ([myCharSet characterIsMember:c]) {
            return YES;
        }
    }
    
    return YES;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
