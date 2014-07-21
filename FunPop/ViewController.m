//
//  ViewController.m
//  FunPop
//
//  Created by junwen.wu on 14-7-8.
//  Copyright (c) 2014年 Lvtu. All rights reserved.
//

#import "ViewController.h"
#import "Pop.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [view setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:view];
    
//    [self playWithBasic:view];
//    [self playWithSpring:view];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) playWithBasic:(UIView*)view {
    
    POPBasicAnimation* anim = [POPBasicAnimation animationWithPropertyNamed:kPOPViewCenter];
    anim.toValue = [NSValue valueWithCGPoint:CGPointMake(self.view.frame.size.width - 40, self.view.frame.size.height - 40)];
    
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    anim.duration = 1.5;
    
    [view pop_addAnimation:anim forKey:@"centerAnimation"];
}

- (void) playWithSpring:(UIView*)view {
    
    POPSpringAnimation* anim = [POPSpringAnimation animationWithPropertyNamed:kPOPViewCenter];
    anim.toValue = [NSValue valueWithCGPoint:CGPointMake(self.view.frame.size.width - 40, self.view.frame.size.height - 40)];
    
    anim.springBounciness = 16;
    anim.springSpeed = 6;
    
    [self playWithBasic:view];
    [view pop_addAnimation:anim forKey:@"centerAnimation"];
}

- (void) playWithPopDecay:(UIView*)view {
    POPDecayAnimation* anmi = [POPDecayAnimation animationWithPropertyNamed:kPOPViewCenter];
}

- (void) playWithCustom:(UIView*)view {
    
}
@end
