//
//  ViewController.m
//  Class Testing Ground
//
//  Created by OSX on 2/27/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *myString = @"Testing some String fun stuff";
    
    // each time there is a space it will return it
    NSMutableArray *wordsInSentence = [[NSMutableArray alloc] initWithArray:[myString componentsSeparatedByString:@" "] ];
    NSLog(@"%@", wordsInSentence);

    // loop through each and capitalize each
    for( int i = 0; i < [wordsInSentence count]; i++)
        [wordsInSentence replaceObjectAtIndex:i withObject:[[wordsInSentence objectAtIndex:i] capitalizedString]];
    
    // print it out
    NSLog(@"%@", wordsInSentence);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
