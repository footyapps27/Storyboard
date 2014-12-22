/*!
 * @file SBPassingDataViewController
 *
 * @author SMRT
 *
 * @section Description
 * Passing data View Controller
 *
 * @section Version 1.0
 *
 */
/*************************************************************************************/
#pragma mark - Imported Class
/*************************************************************************************/
#import "SBFirstStoryboardViewController.h"

/*************************************************************************************/
#pragma mark - Interface
/*************************************************************************************/
@interface SBFirstStoryboardViewController ()

@end

/*************************************************************************************/
#pragma mark - Implementation
/*************************************************************************************/
@implementation SBFirstStoryboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*************************************************************************************/
#pragma mark - Actions
/*************************************************************************************/
- (IBAction)navigateToAnotherStoryBoard:(id)sender
{
    UIStoryboard *objUIStoryboard = [UIStoryboard storyboardWithName:@"SecondStoryboard" bundle:nil];
    
    /* This ID was set in the identity inspector of the storyboard. */
    UIViewController *objUIViewController = [objUIStoryboard instantiateInitialViewController];
    
    [self.navigationController pushViewController:objUIViewController animated:YES];
}

@end
