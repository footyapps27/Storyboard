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
#import "SBActionOnStoryboardViewController.h"

/*************************************************************************************/
#pragma mark - Interface
/*************************************************************************************/
@interface SBActionOnStoryboardViewController ()

@end

/*************************************************************************************/
#pragma mark - Implementation
/*************************************************************************************/
@implementation SBActionOnStoryboardViewController

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
-(IBAction)showAlert:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Voila" message:@"We were able to intercept the action of the button in a storyboard!!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    
    [alert show];
}
@end
