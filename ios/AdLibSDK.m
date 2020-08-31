//
//  AdLibSDK.m
//  DoubleConversion
//
//  Created by Usama Azam on 29/03/2019.
//

#import "AdLibSDK.h"
#import "MoPub.h"
#import "MPMoPubConfiguration.h"

#import "AdColonyGlobalMediationSettings.h"
#import "GoogleAdMobAdapterConfiguration.h"
#import "AppLovinAdapterConfiguration.h"
#import "FacebookAdapterConfiguration.h"
#import "IronSourceAdapterConfiguration.h"

@implementation AdLibSDK

+ (void)initializeAdSDK:(NSString *)unitID {    
    AdColonyGlobalMediationSettings *adColonyMediationSettings = [[AdColonyGlobalMediationSettings alloc] init];
    GoogleAdMobAdapterConfiguration *admobGoogleMediationSettings = [[GoogleAdMobAdapterConfiguration alloc] init];
    AppLovinAdapterConfiguration *applovinMediationSettings = [[AppLovinAdapterConfiguration alloc] init];
    FacebookAdapterConfiguration *facebookMediationSettings = [[FacebookAdapterConfiguration alloc] init];
    IronSourceAdapterConfiguration *ironSourceMediationSettings = [[IronSourceAdapterConfiguration alloc] init];
    
    MPMoPubConfiguration *sdkConfig = [[MPMoPubConfiguration alloc] initWithAdUnitIdForAppInitialization: unitID];
    sdkConfig.loggingLevel = MPBLogLevelDebug;
    sdkConfig.globalMediationSettings = [[NSArray alloc] initWithObjects: @[adColonyMediationSettings, admobGoogleMediationSettings, applovinMediationSettings, facebookMediationSettings, ironSourceMediationSettings], nil];
    [[MoPub sharedInstance] initializeSdkWithConfiguration:sdkConfig completion:^{
        NSLog(@"SDK initialization complete");
    }];
}

@end
