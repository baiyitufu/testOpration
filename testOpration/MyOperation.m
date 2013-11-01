//
//  MyOperation.m
//  testOpration
//
//  Created by Devil on 13-11-1.
//  Copyright (c) 2013年 com.shinyv. All rights reserved.
//

#import "MyOperation.h"

@implementation MyOperation



-(void)uu{
    
    NSLog(@"uu");
    _finsing=YES;

}
-(void)start{
    
    NSLog(@"start");
    
    excutIng =YES;
    for (int i=0; i<10; i++) {
        
        
        
    }

       [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(uu) userInfo:nil repeats:NO];

_finsing=NO;
 

_finsing=YES;


 

}
//start
//isConcurrent
//isExecuting
//isFinished
-(BOOL)isConcurrent{
    NSLog(@"isConcurrent");

    return YES;

}

-(BOOL)isExecuting{
    NSLog(@"isExecuting %d,",excutIng);

    return excutIng;
}
-(BOOL)isFinished{
    NSLog(@"isFinished  %d",_finsing);
    return    _finsing;
}

 

@end
