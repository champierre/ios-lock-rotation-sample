//
//  WebViewController.m
//  lock-rotation
//

#import "WebViewController.h"

@implementation WebViewController

@synthesize rotationLocked = _rotationLocked;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIWebView *webView = [[[UIWebView alloc] init] autorelease];
    webView.frame = self.view.bounds;
    webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    webView.scalesPageToFit = YES;
    [self.view addSubview:webView];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]];
    [webView loadRequest:request];

    UIBarButtonItem * button = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemAdd target:self action:@selector(toggleLock:)];
    [self setToolbarItems:[NSArray arrayWithObjects:button,nil] animated:NO];
    [button release];
    [self.navigationController setToolbarHidden:NO animated:NO];
    
    self.navigationItem.title = @"Unlocked";
}

-(void)toggleLock:(id)sender{
    self.rotationLocked = !self.rotationLocked;
    NSString * text = @"";
    if (self.rotationLocked){
        text = @"Locked";
    }else{
        text = @"Unlocked";
    }
    
    UIAlertView* alertView = [[[UIAlertView alloc] initWithTitle:text
                                                         message:nil delegate:nil cancelButtonTitle:@"Ok"
                                               otherButtonTitles:nil] autorelease];
    [alertView show];
    self.navigationItem.title = text;

}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if (self.rotationLocked) {
        return(interfaceOrientation==UIInterfaceOrientationPortrait);
    } else {
        return YES;
    }
}

@end
