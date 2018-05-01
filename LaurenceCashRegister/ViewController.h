//
//  ViewController.h
//  LaurenceCashRegister
//
//  Created by Laurence Wingo on 11/27/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

int clicked;

@interface ViewController : UIViewController{
    
    AVAudioPlayer *audioPlayer;
    
    SystemSoundID SoundID;

    
}

@property (strong, nonatomic) IBOutlet UILabel *changeToBeGiven;

@property (strong, nonatomic) IBOutlet UITextField *purchasePrice;

@property (strong, nonatomic) IBOutlet UITextField *customerAmountGave;

@property (strong, nonatomic) UITextField *theTextField;





-(IBAction)tender:(id)sender;

@end
