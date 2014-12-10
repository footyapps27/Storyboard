/*!
 * @file SBCustomCell
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
#pragma mark - Interface
/*************************************************************************************/
@interface SBCustomCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *lblFruit;
@property (nonatomic, weak) IBOutlet UILabel *lblColor;

- (IBAction)btnTapped:(id)sender;

@end
