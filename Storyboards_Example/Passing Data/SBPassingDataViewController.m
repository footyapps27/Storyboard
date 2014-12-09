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
#import "SBPassingDataViewController.h"

/*************************************************************************************/
#pragma mark - Interface
/*************************************************************************************/
@interface SBPassingDataViewController ()

@end

/*************************************************************************************/
#pragma mark - Implementation
/*************************************************************************************/
@implementation SBPassingDataViewController

/*************************************************************************************/
#pragma mark - View Lifecycle
/*************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.lblData.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*************************************************************************************/
#pragma mark - DataPassing Protocol
/*************************************************************************************/

- (void)passDataBackToFirstViewController:(NSString *)someValue
{
    self.lblData.text = someValue;
    self.lblData.hidden = NO;
}

/*************************************************************************************/
#pragma mark - Segue
/*************************************************************************************/
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    /* This is how we pass data from one controller to another. */
    if([segue.destinationViewController isKindOfClass:[SBPassingDataToSecondViewController class]])
    {
        SBPassingDataToSecondViewController *objSBPassingDataToSecondViewController = segue.destinationViewController;
        objSBPassingDataToSecondViewController.strValue = @"Passed from first VC";
        objSBPassingDataToSecondViewController.delegate = self;
    }
}

@end
