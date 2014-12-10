/*!
 * @file SBManualFirstViewController
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
#import "SBManualFirstViewController.h"

/*************************************************************************************/
#pragma mark - Interface
/*************************************************************************************/
@interface SBManualFirstViewController ()

@end

/*************************************************************************************/
#pragma mark - Implementation
/*************************************************************************************/
@implementation SBManualFirstViewController

/*************************************************************************************/
#pragma mark - View Lifecycle
/*************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self performSelector:@selector(navigateToNextScreen) withObject:nil afterDelay:10];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)navigateToNextScreen
{
    [self performSegueWithIdentifier:@"ManualSegue" sender:nil];
}
@end
