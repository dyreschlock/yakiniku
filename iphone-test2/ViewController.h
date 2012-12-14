#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    UIImageView *movingObject;
}

@property (weak, nonatomic) IBOutlet UIImageView *dudeSteak;
@property (weak, nonatomic) IBOutlet UIImageView *dudeChicken;
@property (weak, nonatomic) IBOutlet UIImageView *dudeTurnip;

@property (weak, nonatomic) IBOutlet UIImageView *grillImage1;
@property (weak, nonatomic) IBOutlet UIImageView *grillImage2;
@property (weak, nonatomic) IBOutlet UIImageView *grillImage3;
@property (weak, nonatomic) IBOutlet UIImageView *grillImage4;
@property (weak, nonatomic) IBOutlet UIImageView *grillImage5;
@property (weak, nonatomic) IBOutlet UIImageView *grillImage6;
@property (weak, nonatomic) IBOutlet UIImageView *grillImage7;
@property (weak, nonatomic) IBOutlet UIImageView *grillImage8;
@property (weak, nonatomic) IBOutlet UIImageView *grillImage9;

@property (weak, nonatomic) IBOutlet UIImageView *steak;
@property (weak, nonatomic) IBOutlet UIImageView *chicken;
@property (weak, nonatomic) IBOutlet UIImageView *turnip;

@property (strong, nonatomic) UIImageView *movingObject;

@property CGPoint startPoint;
@property CGPoint movingPoint;



@end
