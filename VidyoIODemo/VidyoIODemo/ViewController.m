//
//  ViewController.m
//  VidyoIODemo
//
//  Copyright © 2017 Vidyo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    @private
    Connector *c;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [VidyoClientConnector Initialize];
    c = [[Connector alloc] init:&_videoView ViewStyle:CONNECTORVIEWSTYLE_Default RemoteParticipants:16 LogFileFilter:"" LogFileName:"" UserData:0];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [c ShowViewAt:&_videoView X:0 Y:0 Width:_videoView.frame.size.width Height:_videoView.frame.size.height];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)Connect:(id)sender {
    const char* token = "InsertValidTokenHere";
    [c Connect:"prod.vidyo.io" Token:token DisplayName:"DemoUser" ResourceId:"DemoRoom" Connect:self];
}

- (IBAction)Disconnect:(id)sender {
    [c Disconnect];
}

-(void) OnSuccess {
    
}

-(void) OnDisconnected:(ConnectorDisconnectReason)reason {
    
}

-(void) OnFailure:(ConnectorFailReason)reason {
    
}

@end
