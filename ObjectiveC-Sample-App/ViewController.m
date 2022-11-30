//
//  ViewController.m
//  ObjectiveC-Sample-App
//
//  Created by Adi Mizrahi on 29/11/2022.
//

#import "ViewController.h"
@import Cloudinary;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CLDConfiguration *config = [[CLDConfiguration alloc] initWithCloudName:@"demo" apiKey:nil apiSecret:nil privateCdn:false secure:true cdnSubdomain:false secureCdnSubdomain:false longUrlSignature:false signatureAlgorithm:SignatureAlgorithmSha1 secureDistribution:nil cname:nil uploadPrefix:nil timeout:nil];
    CLDCloudinary *cloudinary = [[CLDCloudinary alloc] initWithConfiguration:config networkAdapter:nil sessionConfiguration:nil];

    NSString *url = [[cloudinary createUrl] generate:@"test" signUrl:false];
    NSLog(@"%@", url);

    CLDUploaderWidget *uw = [[CLDUploaderWidget alloc] initWithCloudinary:cloudinary configuration:config images:nil delegate:nil];
    NSLog(@"%@", uw.description);
}


@end
