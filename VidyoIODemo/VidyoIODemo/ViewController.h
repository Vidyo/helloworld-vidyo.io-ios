//
//  ViewController.h
//  VidyoIODemo
//
//  Copyright © 2017 Vidyo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Lmi/VidyoClient/VidyoConnector_Objc.h"

@interface ViewController : UIViewController <VCConnectorIConnect>
@property (weak, nonatomic) IBOutlet UIView *videoView;
- (IBAction)Connect:(id)sender;

- (IBAction)Disconnect:(id)sender;

@end

