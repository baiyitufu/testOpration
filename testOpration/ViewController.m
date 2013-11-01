//
//  ViewController.m
//  testOpration
//
//  Created by Devil on 13-11-1.
//  Copyright (c) 2013年 com.shinyv. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



-(void)add{


    MyOperation * o1=[[MyOperation alloc]init];
    
    [queue addOperation:o1];
    
    NSLog(@" add  %d" ,queue.operations.count);
}

-(void)see{
     
    NSLog(@" see  %d" ,queue.operations.count);
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    queue =[[NSOperationQueue alloc]init];
    
    MyOperation * o1=[[MyOperation alloc]init];
    
 
    
    [queue addOperation:o1];
    
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(add) userInfo:nil repeats:NO];
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(see) userInfo:nil repeats:YES];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
