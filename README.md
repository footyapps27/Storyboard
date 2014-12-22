Storyboard
==========

Complete functionality of Storyboard displayed in an app.

1. Passing data through storyboards
====================================

Steps: 
	a. Create a segue from first view controller to the next in the storyboard.
	b. Give the controllers the respective controller names.
	c. If required, you can also give the segue 'identifier' name in the storyboard.
	d. - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
	{
		if([segue.destinationViewController isKindOfClass:[SBPassingDataToSecondViewController class]])
    	{
        	SBPassingDataToSecondViewController *objSBPassingDataToSecondViewController = segue.destinationViewController;
        	objSBPassingDataToSecondViewController.strValue = @"Passed from first VC";
        	objSBPassingDataToSecondViewController.delegate = self;
    	}
	}
	

2. Pushing from table view controller using storyboards
=======================================================

Steps: 
	a. Create a segue from first view controller to the next in the storyboard. This time you need to drag from the prototype cell to the next view controller.
	b. Give the controllers the respective controller names.
	c. Give the prototype cell an identifier name. e.g 'Default Cell'
	d. Implement the tableview delegate
		- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
		{
    		return 1;
		}

		- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
		{
    		UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DefaultCell"];
    
   			cell.textLabel.text = @"Go to next view.";
    
		    return cell;
		}

	

3. Custom table view cell using storyboards
============================================

Steps: 
	a. Create a UITableViewCell class.
	b. In the storyboard, map this class to the cell's class(identity inspector).
	c. Customize the cell(row height, content by adding buttons & their actions). Make sure the content is inside the "Content View" of the table view cell.
	d. Implement the actions of the content in the table view cell class.
	e. Implement the table view delegate
		- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
		{
    		SBCustomCell *objSBCustomCell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell" forIndexPath:indexPath];
    
    		objSBCustomCell.lblColor.text = self.arrColor[indexPath.row];
    		objSBCustomCell.lblFruit.text = self.arrFruits[indexPath.row];
    
    		return objSBCustomCell;
		}

4. Navigation from storyboard to xib.
=====================================

Steps: 
From storyboard to xib.
	a. Create a storyboard.
	b. Add a new view controller(say view controller A) to the storyboard. This is view controller which will have its own xib.
	c. Create a new class(VC A) which has xib mapped to it.
	d. In the soryboard, map the class VC A to the view controller. However it is important to delete the view of the view controller in the storyboard.
	e. Now we can attach segues to this view controller & navigate. When this view controller is loaded, it will take the view from the xib that is attached to the view controller.

From xib to storyboard.
	a. When navigating from a view controller to storyboard, we need to use the below code snippet:
	
	UIStoryboard *objUIStoryboard = [UIStoryboard storyboardWithName:@"StoryboardToViewController" bundle:nil];
    
    /* This ID was set in the identity inspector of the storyboard. */
    UIViewController *objUIViewController = [objUIStoryboard instantiateViewControllerWithIdentifier:@"SBThirdViewController"];
    
    [self.navigationController pushViewController:objUIViewController animated:YES];

5. Navigation from one storyboard to another storyboard.
========================================================

Steps: 
	a. For navigating between storyboards, we need to use the same mechanism of navigation between xib to storyboard.
	b. We need to map an action to the storyboard.
	c. On tap of this action, we will instantiate the storyboard & navigate to it.
	
	UIStoryboard *objUIStoryboard = [UIStoryboard storyboardWithName:@"StoryboardToViewController" bundle:nil];
    
    /* Instantiate the first view controller of the storyboard. */
    UIViewController *objUIViewController = [objUIStoryboard instantiateInitialViewController];
    
    [self.navigationController pushViewController:objUIViewController animated:YES];
    
6. Actions on storyboard
=========================

Steps:
	a. For actions to be available in storyboard for a particular view controller, it is important to declare them in the header file.
	b. Proceed in the same manner as with xib's.

7. Example of manual segue
===========================

Steps:
	a. Segues can also be triggered by code using the following command:
		[self performSegueWithIdentifier:@"ManualSegue" sender:nil];
	b. It is important to declare the identifier of the segue.

8. Unwinding segue
====================

Steps:
	a. Unwinding Segue is similar to popping from a navigation controller. We navigate back to a view controller that is in the stack.
	b. For a 
	c. 
	
	
9. Stop segue operation
========================

Steps:
	a. Segue operation can be stopped by implementing the following delegate:
		- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
		{
    		/* Explicitly done to stop the segue from taking place. */
    		return NO;
		}
	b. Depending on the identifier we can also create filters as to which segue we want to perform.

10. Custom segue operation
===========================

Steps:
	a. 