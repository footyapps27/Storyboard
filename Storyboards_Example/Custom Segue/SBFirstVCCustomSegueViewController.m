/*!
 * @file SBFirstVCCustomSegueViewController
 *
 * @author SMRT
 *
 * @section Description
 * Launch View Controller
 *
 * @section Version 1.0
 *
 */
/*************************************************************************************/
#pragma mark - Imported Class
/*************************************************************************************/
#import "SBFirstVCCustomSegueViewController.h"
#import "SBCustomSegue.h"

/*************************************************************************************/
#pragma mark - Interface
/*************************************************************************************/
@interface SBFirstVCCustomSegueViewController ()

@end

/*************************************************************************************/
#pragma mark - Implementation
/*************************************************************************************/
@implementation SBFirstVCCustomSegueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*************************************************************************************/
#pragma mark - Storyboard
/*************************************************************************************/
/* Only if we implement this method will we be able to get the option in "Storyboard" to connect. */
- (IBAction)unwindToFirst:(UIStoryboardSegue *)unwindSegue
{
}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue isKindOfClass:[SBCustomSegue class]]) {
        // Set the start point for the animation to center of the button for the animation
        ((SBCustomSegue *)segue).originatingPoint = ((UIButton *)sender).center;
    }
}

// We need to over-ride this method from UIViewController to provide a custom segue for unwinding
- (UIStoryboardSegue *)segueForUnwindingToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController identifier:(NSString *)identifier {
    // Instantiate a new CustomUnwindSegue
    //SBCustomUnwindingSegue *segue = [[SBCustomUnwindingSegue alloc] initWithIdentifier:identifier source:fromViewController destination:toViewController];
    // Set the target point for the animation to the center of the button in this VC
    //segue.targetPoint = self.view.center;
    //return segue;
    
    return nil;
}

@end
