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
#import <UIKit/UIKit.h>
#import "SBPassingDataToSecondViewController.h"

@interface SBPassingDataViewController : UIViewController<DataPassingProtocol>

@property (nonatomic, weak) IBOutlet UILabel *lblData;

@end
