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
#import <UIKit/UIKit.h>

typedef enum
{
    kSBPassingData = 0,
    kSBPushingFromTableView = 1,
    kSBCustomCell = 2,
    kSBStoryBoardToViewController = 3,
    kSBStoryBoardToAnotherStoryBoard = 4,
    kSBActionOnStoryBoard = 5,
    kSBManualSegue = 6,
    kSBUnwindingSegue = 7,
    kSBStopSegueOperation = 8,
    kSBCustomSegue = 9
}SBOptions;

/*************************************************************************************/
#pragma mark - Interface
/*************************************************************************************/
@interface SBViewController : UITableViewController  


@end

