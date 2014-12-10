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
#pragma mark - Imported Classes
/*************************************************************************************/
#import "SBViewController.h"
#import "SBConstants.h"
/*************************************************************************************/
#pragma mark - Interface
/*************************************************************************************/
@interface SBViewController ()

@property (nonatomic, strong) NSArray *arrOptions;

@end

/*************************************************************************************/
#pragma mark - Implementation
/*************************************************************************************/
@implementation SBViewController


/*************************************************************************************/
#pragma mark - View Lifecycle
/*************************************************************************************/
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    /* Title */
    self.title = @"Storyboards Explained";
    
    self.arrOptions = [NSArray arrayWithObjects:STR_DATA_PASSING,
                       STR_PUSHING_FROM_TABLE_VIEW_CONTROLLER,
                       STR_CUSTOM_TABLE_VIEW_CELL,
                       STR_SB_TO_VIEW_CONTROLLER,
                       STR_SB_TO_SB,
                       STR_ACTION_ON_SB,
                       STR_MANUAL_SEGUE,
                       STR_UNWINDING_SEGUE,
                       STR_STOP_SEGUE_OPERATION,
                       STR_CUSTOM_SEGUE,
                       nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*************************************************************************************/
#pragma mark - TableView Delegates
/*************************************************************************************/
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row)
    {
        case kSBPassingData:
        {
            [self navigateToFirstViewControllerOfStoryBoard:@"PassingData"];
        }
        break;
        case kSBPushingFromTableView:
        {
            [self navigateToFirstViewControllerOfStoryBoard:@"PushFromTableView"];
        }
            break;
        case kSBCustomCell:
        {
            [self navigateToFirstViewControllerOfStoryBoard:@"CustomTableViewCell"];
        }
            break;
        case kSBStoryBoardToViewController:
        {
            [self navigateToFirstViewControllerOfStoryBoard:@"StoryboardToViewController"];
        }
            break;
        case kSBStoryBoardToAnotherStoryBoard:
        {
            [self navigateToFirstViewControllerOfStoryBoard:@"FirstStoryboard"];
        }
            break;
        case kSBActionOnStoryBoard:
        {
            [self navigateToFirstViewControllerOfStoryBoard:@"ActionOnStoryboard"];
        }
            break;
        case kSBManualSegue:
        {
            [self navigateToFirstViewControllerOfStoryBoard:@"ManualSegue"];
        }
            break;
        case kSBUnwindingSegue:
        {
            [self navigateToFirstViewControllerOfStoryBoard:@"UnwindingSegue"];
        }
            break;
        case kSBStopSegueOperation:
        {
            [self navigateToFirstViewControllerOfStoryBoard:@"StopSegueOperation"];
        }
            break;
        default:
            break;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arrOptions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *strIdentifer = @"someIdentifer";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:strIdentifer];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strIdentifer];
    }
    
    cell.textLabel.text = self.arrOptions[indexPath.row];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (void)navigateToFirstViewControllerOfStoryBoard:(NSString *)storyboardName
{
    UIStoryboard *objUIStoryboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    
    UIViewController *objUIViewController = [objUIStoryboard instantiateInitialViewController];
    
    [self.navigationController pushViewController:objUIViewController animated:YES];
}

/*************************************************************************************/
@end
