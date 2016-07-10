//
//  CDVHelloWorld.m
//  jiaCordovaDemo
//
//  Created by wujunyang on 16/7/10.
//
//

#import "CDVHelloWorld.h"

@implementation CDVHelloWorld

-(void)sayHello:(CDVInvokedUrlCommand *)command
{
    //接收JS传过来的值
    NSDictionary *options=[command argumentAtIndex:0 withDefault:nil];
    //对应键名
    NSString *curValue=options[@"quality"];
    
    UIAlertView *myAlertView=[[UIAlertView alloc]initWithTitle:@"我是小实例" message:[NSString stringWithFormat:@"当前的内容从JS传过来的值为：%@",curValue] delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [myAlertView show];
    
    
    //数据回调
    
    if ([curValue isEqualToString:@"200"]) {
        curValue=@"201";
    }
    

    CDVPluginResult *pluginResult=[CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"OC回调过来的值"];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
