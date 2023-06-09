//
//  ViewController.m
//  PodTest
//
//  Created by shiwenchao on 2020/9/1.
//  Copyright © 2020 shiwenchao. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>


@interface ViewController ()<WKUIDelegate,WKNavigationDelegate>
@property (nonatomic, strong) WKWebView *editorView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    
    
    
    UITextView *textView = [[UITextView alloc] init];
    
    
    textView.frame = CGRectMake(15, 100, 345, 200);
    textView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:textView];
    
    
    //allocate config and contentController and add scriptMessageHandler
//    WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
//
//    WKUserContentController *contentController = [[WKUserContentController alloc] init];
//    [contentController addScriptMessageHandler:self name:@"jsm"];
//
//    config.userContentController = contentController;
//
//    //load scripts
//    NSString *scriptString = @"var meta = document.createElement('meta'); meta.setAttribute('name', 'viewport'); meta.setAttribute('content', 'width=device-width'); document.getElementsByTagName('head')[0].appendChild(meta);";
//
//    WKUserScript *script = [[WKUserScript alloc] initWithSource:scriptString injectionTime:WKUserScriptInjectionTimeAtDocumentEnd forMainFrameOnly:YES];
//
//    [contentController addUserScript:script];
//
//
//    //set data detection to none so it doesnt conflict
//    config.dataDetectorTypes = WKDataDetectorTypeNone;
//
//
//
//    self.editorView = [[WKWebView alloc] initWithFrame:CGRectMake(15, 300, 345, 300)
//                                         configuration: config];
//
//
//    self.editorView.UIDelegate = self;
//    self.editorView.navigationDelegate = self;
////    self.editorView.hidesInputAccessoryView = YES;
//
//    //TODO: Is this behavior correct? Is it the right replacement?
////    self.editorView.keyboardDisplayRequiresUserAction = NO;
////    [ZSSRichTextEditor allowDisplayingKeyboardWithoutUserAction];
//
//    self.editorView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
//    self.editorView.scrollView.bounces = YES;
//    self.editorView.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:self.editorView];
//
//    [self loadResources];
}
- (void)loadResources {
 
    //Create a string with the contents of editor.html
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"editor" ofType:@"html"];
    NSData *htmlData = [NSData dataWithContentsOfFile:filePath];
    NSString *htmlString = [[NSString alloc] initWithData:htmlData encoding:NSUTF8StringEncoding];
 
    [self.editorView loadHTMLString:htmlString baseURL:nil];
 
    
}

@end
