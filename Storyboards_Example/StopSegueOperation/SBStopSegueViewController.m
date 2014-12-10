/*!
 * @file SBStopSegueViewController
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
#import "SBStopSegueViewController.h"

/*************************************************************************************/
#pragma mark - Imported Class
/*************************************************************************************/
@interface SBStopSegueViewController ()

@end

/*************************************************************************************/
#pragma mark - Implementation
/*************************************************************************************/
@implementation SBStopSegueViewController

/*************************************************************************************/
#pragma mark - View Lifecycle
/*************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*************************************************************************************/
#pragma mark - Segue Delegate
/*************************************************************************************/
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    /* Explicitly done to stop the segue from taking place. */
    return NO;
}

@end
