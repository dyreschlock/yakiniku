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
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
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
    
    CGPoint touchPoint = movingObject.center;
    
    if(touchPoint.x > grillImage1.frame.origin.x &&
       touchPoint.x < (grillImage1.frame.origin.x + grillImage1.frame.size.width) &&
       touchPoint.y > grillImage1.frame.origin.y &&
       touchPoint.y < (grillImage1.frame.origin.y + grillImage1.frame.size.height))
    {
        grillImage1.image = movingObject.image;
    }
    if(touchPoint.x > grillImage2.frame.origin.x &&
       touchPoint.x < (grillImage2.frame.origin.x + grillImage2.frame.size.width) &&
       touchPoint.y > grillImage2.frame.origin.y &&
       touchPoint.y < (grillImage2.frame.origin.y + grillImage2.frame.size.height))
    {
        grillImage2.image = movingObject.image;
    }
    if(touchPoint.x > grillImage3.frame.origin.x &&
       touchPoint.x < (grillImage3.frame.origin.x + grillImage3.frame.size.width) &&
       touchPoint.y > grillImage3.frame.origin.y &&
       touchPoint.y < (grillImage3.frame.origin.y + grillImage3.frame.size.height))
    {
        grillImage3.image = movingObject.image;
    }
    if(touchPoint.x > grillImage4.frame.origin.x &&
       touchPoint.x < (grillImage4.frame.origin.x + grillImage4.frame.size.width) &&
       touchPoint.y > grillImage4.frame.origin.y &&
       touchPoint.y < (grillImage4.frame.origin.y + grillImage4.frame.size.height))
    {
        grillImage4.image = movingObject.image;
    }
    if(touchPoint.x > grillImage5.frame.origin.x &&
       touchPoint.x < (grillImage5.frame.origin.x + grillImage5.frame.size.width) &&
       touchPoint.y > grillImage5.frame.origin.y &&
       touchPoint.y < (grillImage5.frame.origin.y + grillImage5.frame.size.height))
    {
        grillImage5.image = movingObject.image;
    }
    if(touchPoint.x > grillImage6.frame.origin.x &&
       touchPoint.x < (grillImage6.frame.origin.x + grillImage6.frame.size.width) &&
       touchPoint.y > grillImage6.frame.origin.y &&
       touchPoint.y < (grillImage6.frame.origin.y + grillImage6.frame.size.height))
    {
        grillImage6.image = movingObject.image;
    }
    if(touchPoint.x > grillImage7.frame.origin.x &&
       touchPoint.x < (grillImage7.frame.origin.x + grillImage7.frame.size.width) &&
       touchPoint.y > grillImage7.frame.origin.y &&
       touchPoint.y < (grillImage7.frame.origin.y + grillImage7.frame.size.height))
    {
        grillImage7.image = movingObject.image;
    }
    if(touchPoint.x > grillImage8.frame.origin.x &&
       touchPoint.x < (grillImage8.frame.origin.x + grillImage8.frame.size.width) &&
       touchPoint.y > grillImage8.frame.origin.y &&
       touchPoint.y < (grillImage8.frame.origin.y + grillImage8.frame.size.height))
    {
        grillImage8.image = movingObject.image;
    }
    if(touchPoint.x > grillImage9.frame.origin.x &&
       touchPoint.x < (grillImage9.frame.origin.x + grillImage9.frame.size.width) &&
       touchPoint.y > grillImage9.frame.origin.y &&
       touchPoint.y < (grillImage9.frame.origin.y + grillImage9.frame.size.height))
    {
        grillImage9.image = movingObject.image;
    }
    
    movingObject.center = startPoint;
    movingObject = nil;
}



@end
