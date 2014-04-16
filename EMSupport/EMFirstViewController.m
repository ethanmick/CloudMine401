//
//  EMFirstViewController.m
//  EMSupport
//
//  Created by Ethan Mick on 12/19/13.
//  Copyright (c) 2013 Ethan. All rights reserved.
//

#import "EMFirstViewController.h"
#import "CMPaymentService.h"
#import "SPFollow.h"
#import "AFHTTPRequestOperation.h"

@interface EMFirstViewController ()

@end

//api.staging.cloudmine.me

@implementation EMFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)viewDidAppear:(BOOL)animated;
{
    [super viewDidAppear:animated];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.25 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self aMethod];
    });

}

- (void)aMethod;
{
    CMUser *user = [[CMUser alloc] init];
    
    UIImage *image = [UIImage imageNamed:@"ProfilePicture.png"];
    NSData * imageData = UIImagePNGRepresentation(image);

    [user loginWithSocialNetwork:CMSocialNetworkTwitter
                  viewController:self
                          params:nil
                        callback:^(CMUserAccountResult resultCode, NSArray *messages) {
    
        NSLog(@"Sign in: %d", resultCode);
        CMStore * store = [CMStore defaultStore];
        store.user = user;
                            
                            NSLog(@"Service: %@", user.services);
                            NSLog(@"Toke: %@", user.token);
                            NSLog(@"Logged in: %d", user.isLoggedIn);
        
        [store saveUserFileWithData:imageData
                              named:@"ProfilePicture.jpg"
                  additionalOptions:nil
                           callback:^(CMFileUploadResponse *response) {
                               NSLog(@"%d", response.result);
                           }];
        
    }];
    


}


@end
