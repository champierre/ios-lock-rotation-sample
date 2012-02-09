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
