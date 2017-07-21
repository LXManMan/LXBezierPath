//
//  ViewController.m
//  LXBezierPath
//
//  Created by zhongzhi on 2017/7/21.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import "ViewController.h"
#import "LXCircle.h"

#import "UIColor+Expanded.h"
@interface ViewController ()
{
    LXCircle *_pathView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    self.view.backgroundColor =[UIColor blackColor];
    

    
    LXCircle *pathView =[[LXCircle alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width - 30, self.view.frame.size.width - 30) lineWidth:30];
    pathView.center = self.view.center;
    
    pathView.backgroundColor =[UIColor clearColor];
    [self.view addSubview:pathView];
    
    _pathView  = pathView;
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(50, CGRectGetMaxY(pathView.frame) + 50, self.view.bounds.size.width - 2*50, 30)];
    [slider addTarget:self action:@selector(sliderMethod:) forControlEvents:UIControlEventValueChanged];
    [slider setMaximumValue:1];
    [slider setMinimumValue:0];
    [slider setMinimumTrackTintColor:[UIColor hexStringToColor:@"#5F98FC"]];
    [self.view addSubview:slider];
}

-(void)sliderMethod:(UISlider*)slider
{
    _pathView.progress = slider.value;
}

    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
