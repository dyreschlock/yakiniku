#import "ViewController.h"

@implementation ViewController

@synthesize dudeSteak;
@synthesize dudeChicken;
@synthesize dudeTurnip;

@synthesize grillImage1;
@synthesize grillImage2;
@synthesize grillImage3;
@synthesize grillImage4;
@synthesize grillImage5;
@synthesize grillImage6;
@synthesize grillImage7;
@synthesize grillImage8;
@synthesize grillImage9;

@synthesize grill1timer;
@synthesize grill2timer;
@synthesize grill3timer;
@synthesize grill4timer;
@synthesize grill5timer;
@synthesize grill6timer;
@synthesize grill7timer;
@synthesize grill8timer;
@synthesize grill9timer;

@synthesize grill1time;
@synthesize grill2time;
@synthesize grill3time;
@synthesize grill4time;
@synthesize grill5time;
@synthesize grill6time;
@synthesize grill7time;
@synthesize grill8time;
@synthesize grill9time;

@synthesize dudeSteakTimer;
@synthesize dudeChickenTimer;
@synthesize dudeTurnipTimer;

@synthesize steak;
@synthesize chicken;
@synthesize turnip;

@synthesize movingObject;

@synthesize startPoint;
@synthesize movingPoint;



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    

    
//    dudeSteakTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateDudeSteak) userInfo:nil repeats:YES];
//    dudeChickenTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateDudeChicken) userInfo:nil repeats:YES];
//    dudeTurnipTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateDudeTurnip) userInfo:nil repeats:YES];
}

- (void)viewDidUnload
{
    [self setGrillImage1:nil];
    [self setGrillImage2:nil];
    [self setGrillImage3:nil];
    [self setGrillImage4:nil];
    [self setGrillImage5:nil];
    [self setGrillImage6:nil];
    [self setGrillImage7:nil];
    [self setGrillImage8:nil];
    [self setGrillImage9:nil];
    
    [self setSteak:nil];
    [self setChicken:nil];
    [self setTurnip:nil];
    
    [self setDudeSteak:nil];
    [self setDudeChicken:nil];
    [self setDudeTurnip:nil];
    
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{    
    UITouch *myTouch = [touches anyObject];
    CGPoint touchPoint = [myTouch locationInView:self.view];

    if(touchPoint.x > steak.frame.origin.x &&
       touchPoint.x < (steak.frame.origin.x + steak.frame.size.width) &&
       touchPoint.y > steak.frame.origin.y &&
       touchPoint.y < (steak.frame.origin.y + steak.frame.size.height))
    {
        movingObject = steak;

    }
    else if(touchPoint.x > chicken.frame.origin.x &&
       touchPoint.x < (chicken.frame.origin.x + chicken.frame.size.width) &&
       touchPoint.y > chicken.frame.origin.y &&
       touchPoint.y < (chicken.frame.origin.y + chicken.frame.size.height))
    {
        movingObject = chicken;
    }
    else if(touchPoint.x > turnip.frame.origin.x &&
       touchPoint.x < (turnip.frame.origin.x + turnip.frame.size.width) &&
       touchPoint.y > turnip.frame.origin.y &&
       touchPoint.y < (turnip.frame.origin.y + turnip.frame.size.height))
    {
        movingObject = turnip;
    }
    
    if(movingObject == nil)
    {
        return;
    }

    startPoint = movingObject.center;
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(movingObject == nil)
    {
        return;
    }
    
    UITouch *myTouch = [touches anyObject];
    
    movingPoint = [myTouch locationInView:self.view];
    
    movingObject.center = CGPointMake(movingPoint.x, movingPoint.y);
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(movingObject == nil)
    {
        return;
    }
    
    int grillTime = 20;
    
    CGPoint touchPoint = movingObject.center;
    
    if(touchPoint.x > grillImage1.frame.origin.x &&
       touchPoint.x < (grillImage1.frame.origin.x + grillImage1.frame.size.width) &&
       touchPoint.y > grillImage1.frame.origin.y &&
       touchPoint.y < (grillImage1.frame.origin.y + grillImage1.frame.size.height))
    {
        grillImage1.image = movingObject.image;
        grill1time = grillTime;
        grill1timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateGrill1) userInfo:nil repeats:YES];
    }
    if(touchPoint.x > grillImage2.frame.origin.x &&
       touchPoint.x < (grillImage2.frame.origin.x + grillImage2.frame.size.width) &&
       touchPoint.y > grillImage2.frame.origin.y &&
       touchPoint.y < (grillImage2.frame.origin.y + grillImage2.frame.size.height))
    {
        grillImage2.image = movingObject.image;
        grill2time = grillTime;
        grill2timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateGrill2) userInfo:nil repeats:YES];
    }
    if(touchPoint.x > grillImage3.frame.origin.x &&
       touchPoint.x < (grillImage3.frame.origin.x + grillImage3.frame.size.width) &&
       touchPoint.y > grillImage3.frame.origin.y &&
       touchPoint.y < (grillImage3.frame.origin.y + grillImage3.frame.size.height))
    {
        grillImage3.image = movingObject.image;
        grill3time = grillTime;
        grill3timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateGrill3) userInfo:nil repeats:YES];

    }
    if(touchPoint.x > grillImage4.frame.origin.x &&
       touchPoint.x < (grillImage4.frame.origin.x + grillImage4.frame.size.width) &&
       touchPoint.y > grillImage4.frame.origin.y &&
       touchPoint.y < (grillImage4.frame.origin.y + grillImage4.frame.size.height))
    {
        grillImage4.image = movingObject.image;
        grill4time = grillTime;
        grill4timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateGrill4) userInfo:nil repeats:YES];

    }
    if(touchPoint.x > grillImage5.frame.origin.x &&
       touchPoint.x < (grillImage5.frame.origin.x + grillImage5.frame.size.width) &&
       touchPoint.y > grillImage5.frame.origin.y &&
       touchPoint.y < (grillImage5.frame.origin.y + grillImage5.frame.size.height))
    {
        grillImage5.image = movingObject.image;
        grill5time = grillTime;
        grill5timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateGrill5) userInfo:nil repeats:YES];

    }
    if(touchPoint.x > grillImage6.frame.origin.x &&
       touchPoint.x < (grillImage6.frame.origin.x + grillImage6.frame.size.width) &&
       touchPoint.y > grillImage6.frame.origin.y &&
       touchPoint.y < (grillImage6.frame.origin.y + grillImage6.frame.size.height))
    {
        grillImage6.image = movingObject.image;
        grill6time = grillTime;
        grill6timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateGrill6) userInfo:nil repeats:YES];

    }
    if(touchPoint.x > grillImage7.frame.origin.x &&
       touchPoint.x < (grillImage7.frame.origin.x + grillImage7.frame.size.width) &&
       touchPoint.y > grillImage7.frame.origin.y &&
       touchPoint.y < (grillImage7.frame.origin.y + grillImage7.frame.size.height))
    {
        grillImage7.image = movingObject.image;
        grill7time = grillTime;
        grill7timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateGrill7) userInfo:nil repeats:YES];

    }
    if(touchPoint.x > grillImage8.frame.origin.x &&
       touchPoint.x < (grillImage8.frame.origin.x + grillImage8.frame.size.width) &&
       touchPoint.y > grillImage8.frame.origin.y &&
       touchPoint.y < (grillImage8.frame.origin.y + grillImage8.frame.size.height))
    {
        grillImage8.image = movingObject.image;
        grill8time = grillTime;
        grill8timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateGrill8) userInfo:nil repeats:YES];

    }
    if(touchPoint.x > grillImage9.frame.origin.x &&
       touchPoint.x < (grillImage9.frame.origin.x + grillImage9.frame.size.width) &&
       touchPoint.y > grillImage9.frame.origin.y &&
       touchPoint.y < (grillImage9.frame.origin.y + grillImage9.frame.size.height))
    {
        grillImage9.image = movingObject.image;
        grill9time = grillTime;
        grill9timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateGrill9) userInfo:nil repeats:YES];

    }
    
    movingObject.center = startPoint;
    movingObject = nil;
}

- (void)updateGrill1
{
//    
//    grill1time = grill1time - 1;
//    
//    if(grill1time == 17)
//    {
//        if(grillImage1.image == steak.image)
//        {
//            
//        }
//        
//        grillImage1.image = [UIImage imageNamed:@"steak_2_cooking.png"];
//        
//    }
//    if(grill1time == 13)
//    {
//        
//    }
//    if(grill1time == 10)
//    {
//        
//    }
//    if(grill1time == 5)
//    {
//        
//    }
//    if(grill1time == 0)
//    {
//        
        [grill1timer invalidate];
//    }
}

- (void)updateGrill2
{
    [grill2timer invalidate];
}

- (void)updateGrill3
{
    [grill3timer invalidate];
}

- (void)updateGrill4
{
    [grill4timer invalidate];
}

- (void)updateGrill5
{
    [grill5timer invalidate];
}

- (void)updateGrill6
{
    [grill6timer invalidate];
}

- (void)updateGrill7
{
    [grill7timer invalidate];
}

- (void)updateGrill8
{
    [grill8timer invalidate];
}

- (void)updateGrill9
{
    [grill9timer invalidate];
}

- (void)updateDudeSteak
{
    
}

- (void)updateDudeChicken
{
    
}

- (void)updateDudeTurnip
{
    
}

@end
