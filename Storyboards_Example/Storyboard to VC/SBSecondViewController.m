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
#import "SBSecondViewController.h"

/*************************************************************************************/
#pragma mark - Interface
/*************************************************************************************/
@interface SBSecondViewController ()

@end

/*************************************************************************************/
#pragma mark - Implementation
/*************************************************************************************/
@implementation SBSecondViewController

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
- (IBAction)navigateToNextScreen:(id)sender
{
    UIStoryboard *objUIStoryboard = [UIStoryboard storyboardWithName:@"StoryboardToViewController" bundle:nil];
    
    /* This ID was set in the identity inspector of the storyboard. */
    UIViewController *objUIViewController = [objUIStoryboard instantiateViewControllerWithIdentifier:@"SBThirdViewController"];
    
    [self.navigationController pushViewController:objUIViewController animated:YES];
}


@end
