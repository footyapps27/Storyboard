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
#import "SBCustomCell.h"

/*************************************************************************************/
#pragma mark - Implementation
/*************************************************************************************/
@implementation SBCustomCell

/*************************************************************************************/
#pragma mark - View Lifecycle
/*************************************************************************************/
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
/*************************************************************************************/
#pragma mark - Actions
/*************************************************************************************/
- (IBAction)btnTapped:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Voila" message:@"This action is linked in the custom cell class!!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    
    [alert show];
}

@end
