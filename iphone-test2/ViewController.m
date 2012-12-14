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


@synthesize turnipFood;
@synthesize chickenFood;
@synthesize steakFood;

@synthesize movingFood;


@synthesize grill1;
@synthesize grill2;
@synthesize grill3;
@synthesize grill4;
@synthesize grill5;
@synthesize grill6;
@synthesize grill7;
@synthesize grill8;
@synthesize grill9;

@synthesize movingGrill;


@synthesize steak;
@synthesize chicken;
@synthesize turnip;


@synthesize dudeTurnipDude;
@synthesize dudeChickenDude;
@synthesize dudeSteakDude;


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
    
    grill1 = [[Grill alloc] init:grillImage1];
    grill2 = [[Grill alloc] init:grillImage2];
    grill3 = [[Grill alloc] init:grillImage3];
    grill4 = [[Grill alloc] init:grillImage4];
    grill5 = [[Grill alloc] init:grillImage5];
    grill6 = [[Grill alloc] init:grillImage6];
    grill7 = [[Grill alloc] init:grillImage7];
    grill8 = [[Grill alloc] init:grillImage8];
    grill9 = [[Grill alloc] init:grillImage9];
    
    turnipFood = [[Food alloc] init:turnip foodType:@"turnip"];
    chickenFood = [[Food alloc] init:chicken foodType:@"chicken"];
    steakFood = [[Food alloc] init:steak foodType:@"steak"];

    dudeTurnipDude = [[Dude alloc] init:dudeTurnip foodType:@"turnip"];
    dudeChickenDude = [[Dude alloc] init:dudeChicken foodType:@"chicken"];
    dudeSteakDude = [[Dude alloc] init:dudeSteak foodType:@"steak"];
    
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
    
    if([steakFood isTouching:touchPoint])
    {
        movingFood = steakFood;
    }
    if([chickenFood isTouching:touchPoint])
    {
        movingFood = chickenFood;
    }
    if([turnipFood isTouching:touchPoint])
    {
        movingFood = turnipFood;
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
        
        [movingFood returnToStart];
        movingFood = nil;
    }
    if(movingGrill != nil)
    {
        if([dudeTurnipDude canBeMovedTo:movingGrill])
        {
            [dudeTurnipDude startTimer];
        }
        if([dudeChickenDude canBeMovedTo:movingGrill])
        {
            [dudeChickenDude startTimer];
        }
        if([dudeSteakDude canBeMovedTo:movingGrill])
        {
            [dudeSteakDude startTimer];
        }
        
        [movingGrill returnToStart];
        movingGrill = nil;
    }
}


@end
