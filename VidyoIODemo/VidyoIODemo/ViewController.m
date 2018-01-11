//
//  ViewController.m
//  VidyoIODemo
//
//  Copyright © 2017 Vidyo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    @private
    VCConnector *c;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [VCConnectorPkg vcInitialize];
    c = [[VCConnector alloc] init:&_videoView ViewStyle:VCConnectorViewStyleDefault RemoteParticipants:15 LogFileFilter:"" LogFileName:"" UserData:0];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [c showViewAt:&_videoView X:0 Y:0 Width:_videoView.frame.size.width Height:_videoView.frame.size.height];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)Connect:(id)sender {
    const char* token = "InsertValidTokenHere";
    [c connect:"prod.vidyo.io" Token:token DisplayName:"DemoUser" ResourceId:"DemoRoom" ConnectorIConnect:self];
}

- (IBAction)Disconnect:(id)sender {
    [c disconnect];
}

-(void) onSuccess {}

-(void) onDisconnected:(VCConnectorDisconnectReason)reason {}

-(void) onFailure:(VCConnectorFailReason)reason {}

@end
