//
//  G4ViewController.m
//  Demo
//
//  Created by dourgulf on 12-12-3.
//  Copyright (c) 2012年 G4Next. All rights reserved.
//

#import "G4ViewController.h"
#import "FTCoreTextView.h"

@interface G4ViewController ()<FTCoreTextViewDelegate> {
    FTCoreTextView *coreTextView;
}
@end

@implementation G4ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIScrollView *scrollView = (UIScrollView *)self.view;
    scrollView.backgroundColor = [UIColor whiteColor];
    
    // create FTCoreText
    coreTextView = [[FTCoreTextView alloc] initWithFrame:self.view.bounds];
    [coreTextView setText:[self textForView]];
    [coreTextView addStyles:[self coreTextStyle]];
    [coreTextView setDelegate:self];
	[coreTextView fitToSuggestedHeight];
    [scrollView addSubview:coreTextView];
    [scrollView setContentSize:CGSizeMake(CGRectGetWidth(self.view.bounds), CGRectGetHeight(coreTextView.frame) + 40)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// style
- (NSArray *)coreTextStyle{
    static NSMutableArray *styleArrays = nil;
    if (styleArrays == nil) {
        styleArrays = [[NSMutableArray alloc] init];
        FTCoreTextStyle *defaultStyle = [FTCoreTextStyle new];
        defaultStyle.name = FTCoreTextTagDefault;
        defaultStyle.font = [UIFont systemFontOfSize:16.0f];
        defaultStyle.textAlignment = FTCoreTextAlignementJustified;
        defaultStyle.paragraphInset = UIEdgeInsetsMake(0,0,0,0);
        defaultStyle.leading = 5.0;
        [styleArrays addObject:defaultStyle];
        [defaultStyle release];
        
        FTCoreTextStyle *imageStyle = [FTCoreTextStyle new];
        imageStyle.paragraphInset = UIEdgeInsetsMake(0,0,0,0);
        imageStyle.font = [UIFont systemFontOfSize:16.0f];
        imageStyle.name = FTCoreTextTagImage;
        imageStyle.textAlignment = FTCoreTextAlignementCenter;
        [styleArrays addObject:imageStyle];
        [imageStyle release];
        
        FTCoreTextStyle *smileStyle = [FTCoreTextStyle new];
        smileStyle.paragraphInset = UIEdgeInsetsMake(0,0,0,0);
        smileStyle.font = [UIFont systemFontOfSize:16.0f];
        smileStyle.name = FTCoreTextTagSmile;
        smileStyle.textAlignment = FTCoreTextAlignementJustified;
        [styleArrays addObject:smileStyle];
        [smileStyle release];
        
        FTCoreTextStyle *linkStyle = [defaultStyle copy];
        linkStyle.name = FTCoreTextTagLink;
        linkStyle.font = [UIFont systemFontOfSize:16.0f];
        linkStyle.color = [UIColor orangeColor];
        [styleArrays addObject:linkStyle];
        [linkStyle release];
    }
    return styleArrays;
}

// text
- (NSString *)textForView
{
    return [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"text" ofType:@"txt"] encoding:NSUTF8StringEncoding error:nil];
}

#pragma mark - FTCoreText delegation
- (void)coreTextView:(FTCoreTextView *)coreTextView receivedTouchOnData:(NSDictionary *)data{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"clicked event" message:[NSString stringWithFormat:@"%@", data] delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
    [alert show];
    [alert release];
}
@end
