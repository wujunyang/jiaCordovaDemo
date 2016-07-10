//
//  CDVHelloWorld.h
//  jiaCordovaDemo
//
//  Created by wujunyang on 16/7/10.
//
//

#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>

@interface CDVHelloWorld : CDVPlugin

-(void)sayHello:(CDVInvokedUrlCommand *)command;

@end
