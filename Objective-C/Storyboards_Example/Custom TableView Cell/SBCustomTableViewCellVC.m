/*!
 * @file SBCustomTableViewCellVC
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
#import "SBCustomTableViewCellVC.h"
#import "SBCustomCell.h"

/*************************************************************************************/
#pragma mark - Interface
/*************************************************************************************/
@interface SBCustomTableViewCellVC ()

@property (nonatomic, strong) NSArray *arrFruits;
@property (nonatomic, strong) NSArray *arrColor;

@end

/*************************************************************************************/
#pragma mark - Implementation
/*************************************************************************************/
@implementation SBCustomTableViewCellVC

/*************************************************************************************/
#pragma mark - View Lifecycle
/*************************************************************************************/
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.arrFruits = [NSArray arrayWithObjects:@"Apple", @"Banana", @"Grapes", nil];
    self.arrColor = [NSArray arrayWithObjects:@"Red", @"Yellow", @"Green", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*************************************************************************************/
#pragma mark - Tableview Delegates
/*************************************************************************************/
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arrColor.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SBCustomCell *objSBCustomCell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell" forIndexPath:indexPath];
    
    objSBCustomCell.lblColor.text = self.arrColor[indexPath.row];
    objSBCustomCell.lblFruit.text = self.arrFruits[indexPath.row];
    
    return objSBCustomCell;
}
/*************************************************************************************/
@end
