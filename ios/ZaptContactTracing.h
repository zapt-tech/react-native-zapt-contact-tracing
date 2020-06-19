#import <React/RCTBridgeModule.h>
#import <ZaptContactTracing_iOS_SDK/ZaptContactTracing_iOS_SDK-Swift.h>

@interface ZaptContactTracing : NSObject <RCTBridgeModule>

@property (retain) ContactTracingManager *contactTracingSDKManager;

@end
