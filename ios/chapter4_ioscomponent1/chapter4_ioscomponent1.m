//
//  chapter4_ioscomponent1.m
//  chapter4_ioscomponent1
//
//  Created by lz on 2019/4/9.
//  Copyright © 2019 new. All rights reserved.
//

#import "chapter4_ioscomponent1.h"

#import <React/RCTLog.h>

@implementation chapter4_ioscomponent1
{
    
}

RCT_EXPORT_MODULE(chapter4_ioscomponent1);

RCT_EXPORT_METHOD(print:(NSString *)name info:(NSDictionary *)info) {
    
    RCTLogInfo(@"Hello, I'm Chapter4_RNIOSComponent\n s%@: %@", name, info);
}


RCT_EXPORT_METHOD(showAlert:(NSString *)title message:(NSString *)message) {
    
    dispatch_async(dispatch_get_main_queue(), ^{
       
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle: title message: message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    });
}

@end
