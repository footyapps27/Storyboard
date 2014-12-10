/*!
 * @file ViewController
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

#import "SBUnwindingSecondViewController.h"

@interface SBUnwindingSecondViewController ()

@end

@implementation SBUnwindingSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/* Only if we implement this method will we be able to get the option in "Storyboard" to connect. */
- (IBAction)unwindToGreen:(UIStoryboardSegue *)unwindSegue
{
    NSLog(@"The source view controller from where this unwinding method was called = %@", [unwindSegue destinationViewController]);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
