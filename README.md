Storyboard
==========

Complete functionality of Storyboard displayed in an app.

1. Passing data through storyboards
====================================

Steps: <br>
	a. Create a segue from first view controller to the next in the storyboard.<br>
	b. Give the controllers the respective controller names.<br>
	c. If required, you can also give the segue 'identifier' name in the storyboard.<br>
	    
        - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
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

Steps: <br>
	a. Create a segue from first view controller to the next in the storyboard. This time you need to drag from the prototype cell to the next view controller.<br>
	b. Give the controllers the respective controller names.<br>
	c. Give the prototype cell an identifier name. e.g 'Default Cell'<br>
	d. Implement the tableview delegate<br>
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

Steps: <br>
	a. Create a UITableViewCell class.<br>
	b. In the storyboard, map this class to the cell's class(identity inspector).<br>
	c. Customize the cell(row height, content by adding buttons & their actions). Make sure the content is inside the "Content View" of the table view cell.<br>
	d. Implement the actions of the content in the table view cell class.<br>
	e. Implement the table view delegate<br>
		- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
		{
    		SBCustomCell *objSBCustomCell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell" forIndexPath:indexPath];
    
    		objSBCustomCell.lblColor.text = self.arrColor[indexPath.row];
    		objSBCustomCell.lblFruit.text = self.arrFruits[indexPath.row];
    
    		return objSBCustomCell;
		}

4. Navigation from storyboard to xib.
=====================================

Steps: <br>
From storyboard to xib.<br>
	a. Create a storyboard.<br>
	b. Add a new view controller(say view controller A) to the storyboard. This is view controller which will have its own xib.<br>
	c. Create a new class(VC A) which has xib mapped to it.<br>
	d. In the soryboard, map the class VC A to the view controller. However it is important to delete the view of the view controller in the storyboard.<br>
	e. Now we can attach segues to this view controller & navigate. When this view controller is loaded, it will take the view from the xib that is attached to the view controller.<br>

From xib to storyboard.<br>
	a. When navigating from a view controller to storyboard, we need to use the below code snippet:<br>
	
	UIStoryboard *objUIStoryboard = [UIStoryboard storyboardWithName:@"StoryboardToViewController" bundle:nil];
    
    /* This ID was set in the identity inspector of the storyboard. */
    UIViewController *objUIViewController = [objUIStoryboard instantiateViewControllerWithIdentifier:@"SBThirdViewController"];
    
    [self.navigationController pushViewController:objUIViewController animated:YES];

5. Navigation from one storyboard to another storyboard.
========================================================

Steps: <br>
	a. For navigating between storyboards, we need to use the same mechanism of navigation between xib to storyboard.<br>
	b. We need to map an action to the storyboard.<br>
	c. On tap of this action, we will instantiate the storyboard & navigate to it.<br>
	
	UIStoryboard *objUIStoryboard = [UIStoryboard storyboardWithName:@"StoryboardToViewController" bundle:nil];
    
    /* Instantiate the first view controller of the storyboard. */
    UIViewController *objUIViewController = [objUIStoryboard instantiateInitialViewController];
    
    [self.navigationController pushViewController:objUIViewController animated:YES];
    
6. Actions on storyboard
=========================

Steps:<br>
	a. For actions to be available in storyboard for a particular view controller, it is important to declare them in the header file.<br>
	b. Proceed in the same manner as with xib's.<br>

7. Example of manual segue
===========================

Steps:<br>
	a. Segues can also be triggered by code using the following command:<br>
		[self performSegueWithIdentifier:@"ManualSegue" sender:nil];
	b. It is important to declare the identifier of the segue.<br>

8. Unwinding segue
====================

Steps:
    a. Unwinding Segue is similar to popping from a navigation controller. We navigate back to a view controller that is in the stack.<br>
    b. For a view controller to allow other view controller to unwind to it, it needs to implement the following method(method name can be different):<br>
        - (IBAction)unwindToRed:(UIStoryboardSegue *)unwindSegue
        {
            /* Here we can access from which VC this object has arrived. */
            NSLog(@"The source view controller from where this unwinding method was called = %@", [unwindSegue destinationViewController]);
        }	
    c. Once this method is implemented, then go to the view controller from which you want to unwind to.
    d. Ctrl + Drag from the button to the "Exit" icon on top of the view controller, & connect it to the method.

	
9. Stop segue operation
========================

Steps:<br>
	a. Segue operation can be stopped by implementing the following delegate:<br>
		- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
		{
    		/* Explicitly done to stop the segue from taking place. */
    		return NO;
		}
	b. Depending on the identifier we can also create filters as to which segue we want to perform.<br>

10. Custom segue operation
===========================

Steps:<br>
	a. <br>
