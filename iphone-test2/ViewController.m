#import "ViewController.h"

@implementation ViewController

@synthesize dudeSteakImage;
@synthesize dudeChickenImage;
@synthesize dudeTurnipImage;

@synthesize turnipImage;
@synthesize chickenImage;
@synthesize steakImage;

@synthesize grill1Image;
@synthesize grill2Image;
@synthesize grill3Image;
@synthesize grill4Image;
@synthesize grill5Image;
@synthesize grill6Image;
@synthesize grill7Image;
@synthesize grill8Image;
@synthesize grill9Image;

@synthesize dudeTurnip;
@synthesize dudeChicken;
@synthesize dudeSteak;

@synthesize turnip;
@synthesize chicken;
@synthesize steak;

@synthesize grill1;
@synthesize grill2;
@synthesize grill3;
@synthesize grill4;
@synthesize grill5;
@synthesize grill6;
@synthesize grill7;
@synthesize grill8;
@synthesize grill9;

@synthesize movingFood;
@synthesize movingGrill;


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
    
    grill1 = [[Grill alloc] init:grill1Image];
    grill2 = [[Grill alloc] init:grill2Image];
    grill3 = [[Grill alloc] init:grill3Image];
    grill4 = [[Grill alloc] init:grill4Image];
    grill5 = [[Grill alloc] init:grill5Image];
    grill6 = [[Grill alloc] init:grill6Image];
    grill7 = [[Grill alloc] init:grill7Image];
    grill8 = [[Grill alloc] init:grill8Image];
    grill9 = [[Grill alloc] init:grill9Image];
    
    turnip = [[Food alloc] init:turnipImage foodType:@"turnip"];
    chicken = [[Food alloc] init:chickenImage foodType:@"chicken"];
    steak = [[Food alloc] init:steakImage foodType:@"steak"];

    dudeTurnip = [[Dude alloc] init:dudeTurnipImage foodType:@"turnip"];
    dudeChicken = [[Dude alloc] init:dudeChickenImage foodType:@"chicken"];
    dudeSteak = [[Dude alloc] init:dudeSteakImage foodType:@"steak"];
    
}

- (void)viewDidUnload
{
    [self setDudeSteakImage:nil];
    [self setDudeChickenImage:nil];
    [self setDudeTurnipImage:nil];
    
    [self setTurnipImage:nil];
    [self setChickenImage:nil];
    [self setSteakImage:nil];
    
    [self setGrill1Image:nil];
    [self setGrill2Image:nil];
    [self setGrill3Image:nil];
    [self setGrill4Image:nil];
    [self setGrill5Image:nil];
    [self setGrill6Image:nil];
    [self setGrill7Image:nil];
    [self setGrill8Image:nil];
    [self setGrill9Image:nil];
    
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
    
    if([steak isTouching:touchPoint])
    {
        movingFood = steak;
    }
    if([chicken isTouching:touchPoint])
    {
        movingFood = chicken;
    }
    if([turnip isTouching:touchPoint])
    {
        movingFood = turnip;
    }
    
    if([grill1 isTouchingAndBurned:touchPoint])
    {
        [grill1 chip];
    }
    if([grill2 isTouchingAndBurned:touchPoint])
    {
        [grill2 chip];
    }
    if([grill3 isTouchingAndBurned:touchPoint])
    {
        [grill3 chip];
    }
    if([grill4 isTouchingAndBurned:touchPoint])
    {
        [grill4 chip];
    }
    if([grill5 isTouchingAndBurned:touchPoint])
    {
        [grill5 chip];
    }
    if([grill6 isTouchingAndBurned:touchPoint])
    {
        [grill6 chip];
    }
    if([grill7 isTouchingAndBurned:touchPoint])
    {
        [grill7 chip];
    }
    if([grill8 isTouchingAndBurned:touchPoint])
    {
        [grill8 chip];
    }
    if([grill9 isTouchingAndBurned:touchPoint])
    {
        [grill9 chip];
    }

    if([grill1 canBeMovedFrom:touchPoint])
    {
        movingGrill = grill1;
    }
    if([grill2 canBeMovedFrom:touchPoint])
    {
        movingGrill = grill2;
    }
    if([grill3 canBeMovedFrom:touchPoint])
    {
        movingGrill = grill3;
    }
    if([grill4 canBeMovedFrom:touchPoint])
    {
        movingGrill = grill4;
    }
    if([grill5 canBeMovedFrom:touchPoint])
    {
        movingGrill = grill5;
    }
    if([grill6 canBeMovedFrom:touchPoint])
    {
        movingGrill = grill6;
    }
    if([grill7 canBeMovedFrom:touchPoint])
    {
        movingGrill = grill7;
    }
    if([grill8 canBeMovedFrom:touchPoint])
    {
        movingGrill = grill8;
    }
    if([grill9 canBeMovedFrom:touchPoint])
    {
        movingGrill = grill9;
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *myTouch = [touches anyObject];
    CGPoint movingPoint = [myTouch locationInView:self.view];
    
    if(movingFood != nil)
    {
        movingFood.imageView.center = CGPointMake(movingPoint.x, movingPoint.y);
    }
    if(movingGrill != nil)
    {
        movingGrill.imageView.center = CGPointMake(movingPoint.x, movingPoint.y);
    }
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(movingFood != nil)
    {
        CGPoint touchPoint = movingFood.imageView.center;

        if([grill1 canBeMovedTo:touchPoint])
        {
            [grill1 startTimer:movingFood];
        }
        if([grill2 canBeMovedTo:touchPoint])
        {
            [grill2 startTimer:movingFood];
        }
        if([grill3 canBeMovedTo:touchPoint])
        {
            [grill3 startTimer:movingFood];
        }
        if([grill4 canBeMovedTo:touchPoint])
        {
            [grill4 startTimer:movingFood];
        }
        if([grill5 canBeMovedTo:touchPoint])
        {
            [grill5 startTimer:movingFood];
        }
        if([grill6 canBeMovedTo:touchPoint])
        {
            [grill6 startTimer:movingFood];
        }
        if([grill7 canBeMovedTo:touchPoint])
        {
            [grill7 startTimer:movingFood];
        }
        if([grill8 canBeMovedTo:touchPoint])
        {
            [grill8 startTimer:movingFood];
        }
        if([grill9 canBeMovedTo:touchPoint])
        {
            [grill9 startTimer:movingFood];
        }
        
        [movingFood resetPosition];
        movingFood = nil;
    }
    if(movingGrill != nil)
    {
        if([dudeTurnip canBeMovedTo:movingGrill])
        {
            [dudeTurnip startTimer];
            [movingGrill completeCook];
        }
        if([dudeChicken canBeMovedTo:movingGrill])
        {
            [dudeChicken startTimer];
            [movingGrill completeCook];
        }
        if([dudeSteak canBeMovedTo:movingGrill])
        {
            [dudeSteak startTimer];
            [movingGrill completeCook];
        }
        
        [movingGrill resetPosition];
        movingGrill = nil;
    }
}


@end
