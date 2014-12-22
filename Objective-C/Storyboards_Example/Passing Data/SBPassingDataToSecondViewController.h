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

/*************************************************************************************/
#pragma mark - Protocol
/*************************************************************************************/
@protocol DataPassingProtocol <NSObject>

- (void)passDataBackToFirstViewController:(NSString *)someValue;

@end

/*************************************************************************************/
#pragma mark - Interface
/*************************************************************************************/
@interface SBPassingDataToSecondViewController : UIViewController

@property (nonatomic, weak) id<DataPassingProtocol> delegate;
@property (nonatomic, strong) NSString *strValue;

@property (nonatomic, weak) IBOutlet UILabel *lblValue;

@end
