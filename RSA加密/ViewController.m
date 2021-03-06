//
//  ViewController.m
//  RSA加密
//
//  Created by liaowentao on 17/4/19.
//  Copyright © 2017年 Haochuang. All rights reserved.
//

#import "ViewController.h"
#import "RSAEncryptor.h"
#import "AES128.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *resolvedString;
@property (weak, nonatomic) IBOutlet UILabel *lastString;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSString *str = @"我是男的";
    NSLog(@"%@",[AES128 md5:str]);
    NSLog(@"%@",[AES128 md5HexDigest:str]);
    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)enctryButton:(id)sender {
    
    //原始数据
    NSString *originalString = self.textField.text;
    
    //使用.der和.p12中的公钥私钥加密解密
//    NSString *public_key_path = [[NSBundle mainBundle] pathForResource:@"public_key.der" ofType:nil];
//    NSString *private_key_path = [[NSBundle mainBundle] pathForResource:@"private_key.p12" ofType:nil];
//    NSString *encryptStr = [RSAEncryptor encryptString:originalString publicKeyWithContentsOfFile:public_key_path];
    
    NSString *encryptStr = [RSAEncryptor encryptString:originalString publicKey:@"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDX59R/0tfxWMVMNU5NI1QOXUZsnMDPj3mSXt55PB86Ewk2MXAHUlSkPMqE7J08yf+gV7F66ng5OnDM+nkfo0waB/z+MaOU/7W92C3IKUvwEMPVXYuEMOxmzTmFJliBbcurClSy4S+1YbPlSk1RKSFQ2wf3ySSSHAvJRw+fGJzFlQIDAQAB"];
    
    NSLog(@"加密前:%@", originalString);
    NSLog(@"加密后:%@", encryptStr);;

    self.resolvedString.text = [NSString stringWithFormat:@"加密后:%@",encryptStr];
    NSLog(@"%@",encryptStr);

    self.lastString.text = [NSString stringWithFormat:@"解密后:%@",[RSAEncryptor decryptString:encryptStr privateKey:@"MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBANfn1H/S1/FYxUw1Tk0jVA5dRmycwM+PeZJe3nk8HzoTCTYxcAdSVKQ8yoTsnTzJ/6BXsXrqeDk6cMz6eR+jTBoH/P4xo5T/tb3YLcgpS/AQw9Vdi4Qw7GbNOYUmWIFty6sKVLLhL7Vhs+VKTVEpIVDbB/fJJJIcC8lHD58YnMWVAgMBAAECgYEAvVlwH/pFsEBuJ/vIBBarrT1YegCviFkIAbp52lFEAaaYOZL58THfUXqPEiyBacKuEW1XFbl0XpxGOT6h44FPRxi/2W5P2jgqFhm8OKa+lMt5egk2Dzps1J9Tt8M2U2hShrgWBeh6x2mUKlD8cRIv28MrpzXKl2HxZbbv4q2ct7ECQQDtAzyQPnxDrC2ZDlzt8YTrMEtIoTChx1BprB6eA6/kflbf6eP4wqXA/sxgXee21h+947npFXdRH7B+o2gyjtRbAkEA6TO4aO4L/vQRLsZmGvwVjIaQAKPhJE0f4lkmXRUPiuEL7W3mPGPwjgm5cykb89AXbWNV+VmSI/tLpX73t0owzwJAKisFP3Sejzu28SBJEFyEFYQGIOnsyRu5BtQEroBhbvm7YyMt2DhpXSj4G70ZWMJH63T0wq97BwfoUt+nzjbzOQJAIvFZBIAG1CEGIhggXJLBN9lB4paruaDE0knBcdkiBxFJlD4PbaUb+myCmTrjsVjQ6dcknsRJHZMd9qJbw98eCQJATO39chJoRE+hf6496bXtZgcJg5nevdWtBa89HqwX5siDhnSqZfZuxYnt9A5N60LUX18iiJypR2U59t2bIWXUAA=="]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
