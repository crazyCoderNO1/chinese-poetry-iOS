//
//  chinesepoetryUtil.m
//  gushiwendaquan
//
//  Created by yangmengge on 2019/2/20.
//  Copyright © 2019 yangmengge. All rights reserved.
//

#import "chinesepoetryUtil.h"

@implementation chinesepoetryUtil

IMP_SINGLETON(chinesepoetryUtil);

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.authorssong = @"authors.song.json";
        self.authorstang = @"authors.tang.json";
        self.tangArray = @[
                           @"poet.song.191000.json",
                           @"poet.song.58000.json",
                           @"poet.song.192000.json",
                           @"poet.song.59000.json",
                           @"poet.song.193000.json",
                           @"poet.song.6000.json",
                           @"poet.song.0.json",
                           @"poet.song.194000.json",
                           @"poet.song.60000.json",
                           @"poet.song.1000.json",
                           @"poet.song.195000.json",
                           @"poet.song.61000.json",
                           @"poet.song.10000.json",
                           @"poet.song.196000.json",
                           @"poet.song.62000.json",
                           @"poet.song.100000.json",
                           @"poet.song.197000.json",
                           @"poet.song.63000.json",
                           @"poet.song.101000.json",
                           @"poet.song.198000.json",
                           @"poet.song.64000.json",
                           @"poet.song.102000.json",
                           @"poet.song.199000.json",
                           @"poet.song.65000.json",
                           @"poet.song.103000.json",
                           @"poet.song.2000.json",
                           @"poet.song.66000.json",
                           @"poet.song.104000.json",
                           @"poet.song.20000.json",
                           @"poet.song.67000.json",
                           @"poet.song.105000.json",
                           @"poet.song.200000.json",
                           @"poet.song.68000.json",
                           @"poet.song.106000.json",
                           @"poet.song.201000.json",
                           @"poet.song.69000.json",
                           @"poet.song.107000.json",
                           @"poet.song.202000.json",
                           @"poet.song.7000.json",
                           @"poet.song.108000.json",
                           @"poet.song.203000.json",
                           @"poet.song.70000.json",
                           @"poet.song.109000.json",
                           @"poet.song.204000.json",
                           @"poet.song.71000.json",
                           @"poet.song.11000.json",
                           @"poet.song.205000.json",
                           @"poet.song.72000.json",
                           @"poet.song.110000.json",
                           @"poet.song.206000.json",
                           @"poet.song.73000.json",
                           @"poet.song.111000.json",
                           @"poet.song.207000.json",
                           @"poet.song.74000.json",
                           @"poet.song.112000.json",
                           @"poet.song.208000.json",
                           @"poet.song.75000.json",
                           @"poet.song.113000.json",
                           @"poet.song.209000.json",
                           @"poet.song.76000.json",
                           @"poet.song.114000.json",
                           @"poet.song.21000.json",
                           @"poet.song.77000.json",
                           @"poet.song.115000.json",
                           @"poet.song.210000.json",
                           @"poet.song.78000.json",
                           @"poet.song.116000.json",
                           @"poet.song.211000.json",
                           @"poet.song.79000.json",
                           @"poet.song.117000.json",
                           @"poet.song.212000.json",
                           @"poet.song.8000.json",
                           @"poet.song.118000.json",
                           @"poet.song.213000.json",
                           @"poet.song.80000.json",
                           @"poet.song.119000.json",
                           @"poet.song.214000.json",
                           @"poet.song.81000.json",
                           @"poet.song.12000.json",
                           @"poet.song.215000.json",
                           @"poet.song.82000.json",
                           @"poet.song.120000.json",
                           @"poet.song.216000.json",
                           @"poet.song.83000.json",
                           @"poet.song.121000.json",
                           @"poet.song.217000.json",
                           @"poet.song.84000.json",
                           @"poet.song.122000.json",
                           @"poet.song.218000.json",
                           @"poet.song.85000.json",
                           @"poet.song.123000.json",
                           @"poet.song.219000.json",
                           @"poet.song.86000.json",
                           @"poet.song.124000.json",
                           @"poet.song.22000.json",
                           @"poet.song.87000.json",
                           @"poet.song.125000.json",
                           @"poet.song.220000.json",
                           @"poet.song.88000.json",
                           @"poet.song.126000.json",
                           @"poet.song.221000.json",
                           @"poet.song.89000.json",
                           @"poet.song.127000.json",
                           @"poet.song.222000.json",
                           @"poet.song.9000.json",
                           @"poet.song.128000.json",
                           @"poet.song.223000.json",
                           @"poet.song.90000.json",
                           @"poet.song.129000.json",
                           @"poet.song.224000.json",
                           @"poet.song.91000.json",
                           @"poet.song.13000.json",
                           @"poet.song.225000.json",
                           @"poet.song.92000.json",
                           @"poet.song.130000.json",
                           @"poet.song.226000.json",
                           @"poet.song.93000.json",
                           @"poet.song.131000.json",
                           @"poet.song.227000.json",
                           @"poet.song.94000.json",
                           @"poet.song.132000.json",
                           @"poet.song.228000.json",
                           @"poet.song.95000.json",
                           @"poet.song.133000.json",
                           @"poet.song.229000.json",
                           @"poet.song.96000.json",
                           @"poet.song.134000.json",
                           @"poet.song.23000.json",
                           @"poet.song.97000.json",
                           @"poet.song.135000.json",
                           @"poet.song.230000.json",
                           @"poet.song.98000.json",
                           @"poet.song.136000.json",
                           @"poet.song.231000.json",
                           @"poet.song.99000.json",
                           @"poet.song.137000.json",
                           @"poet.song.232000.json",
                           @"poet.tang.0.json",
                           @"poet.song.138000.json",
                           @"poet.song.233000.json",
                           @"poet.tang.1000.json",
                           @"poet.song.139000.json",
                           @"poet.song.234000.json",
                           @"poet.tang.10000.json",
                           @"poet.song.14000.json",
                           @"poet.song.235000.json",
                           @"poet.tang.11000.json",
                           @"poet.song.140000.json",
                           @"poet.song.236000.json",
                           @"poet.tang.12000.json",
                           @"poet.song.141000.json",
                           @"poet.song.237000.json",
                           @"poet.tang.13000.json",
                           @"poet.song.142000.json",
                           @"poet.song.238000.json",
                           @"poet.tang.14000.json",
                           @"poet.song.143000.json",
                           @"poet.song.239000.json",
                           @"poet.tang.15000.json",
                           @"poet.song.144000.json",
                           @"poet.song.24000.json",
                           @"poet.tang.16000.json",
                           @"poet.song.145000.json",
                           @"poet.song.240000.json",
                           @"poet.tang.17000.json",
                           @"poet.song.146000.json",
                           @"poet.song.241000.json",
                           @"poet.tang.18000.json",
                           @"poet.song.147000.json",
                           @"poet.song.242000.json",
                           @"poet.tang.19000.json",
                           @"poet.song.148000.json",
                           @"poet.song.243000.json",
                           @"poet.tang.2000.json",
                           @"poet.song.149000.json",
                           @"poet.song.244000.json",
                           @"poet.tang.20000.json",
                           @"poet.song.15000.json",
                           @"poet.song.245000.json",
                           @"poet.tang.21000.json",
                           @"poet.song.150000.json",
                           @"poet.song.246000.json",
                           @"poet.tang.22000.json",
                           @"poet.song.151000.json",
                           @"poet.song.247000.json",
                           @"poet.tang.23000.json",
                           @"poet.song.152000.json",
                           @"poet.song.248000.json",
                           @"poet.tang.24000.json",
                           @"poet.song.153000.json",
                           @"poet.song.249000.json",
                           @"poet.tang.25000.json",
                           @"poet.song.154000.json",
                           @"poet.song.25000.json",
                           @"poet.tang.26000.json",
                           @"poet.song.155000.json",
                           @"poet.song.250000.json",
                           @"poet.tang.27000.json",
                           @"poet.song.156000.json",
                           @"poet.song.251000.json",
                           @"poet.tang.28000.json",
                           @"poet.song.157000.json",
                           @"poet.song.252000.json",
                           @"poet.tang.29000.json",
                           @"poet.song.158000.json",
                           @"poet.song.253000.json",
                           @"poet.tang.3000.json",
                           @"poet.song.159000.json",
                           @"poet.song.254000.json",
                           @"poet.tang.30000.json",
                           @"poet.song.16000.json",
                           @"poet.song.26000.json",
                           @"poet.tang.31000.json",
                           @"poet.song.160000.json",
                           @"poet.song.27000.json",
                           @"poet.tang.32000.json",
                           @"poet.song.161000.json",
                           @"poet.song.28000.json",
                           @"poet.tang.33000.json",
                           @"poet.song.162000.json",
                           @"poet.song.29000.json",
                           @"poet.tang.34000.json",
                           @"poet.song.163000.json",
                           @"poet.song.3000.json",
                           @"poet.tang.35000.json",
                           @"poet.song.164000.json",
                           @"poet.song.30000.json",
                           @"poet.tang.36000.json",
                           @"poet.song.165000.json",
                           @"poet.song.31000.json",
                           @"poet.tang.37000.json",
                           @"poet.song.166000.json",
                           @"poet.song.32000.json",
                           @"poet.tang.38000.json",
                           @"poet.song.167000.json",
                           @"poet.song.33000.json",
                           @"poet.tang.39000.json",
                           @"poet.song.168000.json",
                           @"poet.song.34000.json",
                           @"poet.tang.4000.json",
                           @"poet.song.169000.json",
                           @"poet.song.35000.json",
                           @"poet.tang.40000.json",
                           @"poet.song.17000.json",
                           @"poet.song.36000.json",
                           @"poet.tang.41000.json",
                           @"poet.song.170000.json",
                           @"poet.song.37000.json",
                           @"poet.tang.42000.json",
                           @"poet.song.171000.json",
                           @"poet.song.38000.json",
                           @"poet.tang.43000.json",
                           @"poet.song.172000.json",
                           @"poet.song.39000.json",
                           @"poet.tang.44000.json",
                           @"poet.song.173000.json",
                           @"poet.song.4000.json",
                           @"poet.tang.45000.json",
                           @"poet.song.174000.json",
                           @"poet.song.40000.json",
                           @"poet.tang.46000.json",
                           @"poet.song.175000.json",
                           @"poet.song.41000.json",
                           @"poet.tang.47000.json",
                           @"poet.song.176000.json",
                           @"poet.song.42000.json",
                           @"poet.tang.48000.json",
                           @"poet.song.177000.json",
                           @"poet.song.43000.json",
                           @"poet.tang.49000.json",
                           @"poet.song.178000.json",
                           @"poet.song.44000.json",
                           @"poet.tang.5000.json",
                           @"poet.song.179000.json",
                           @"poet.song.45000.json",
                           @"poet.tang.50000.json",
                           @"poet.song.18000.json",
                           @"poet.song.46000.json",
                           @"poet.tang.51000.json",
                           @"poet.song.180000.json",
                           @"poet.song.47000.json",
                           @"poet.tang.52000.json",
                           @"poet.song.181000.json",
                           @"poet.song.48000.json",
                           @"poet.tang.53000.json",
                           @"poet.song.182000.json",
                           @"poet.song.49000.json",
                           @"poet.tang.54000.json",
                           @"poet.song.183000.json",
                           @"poet.song.5000.json",
                           @"poet.tang.55000.json",
                           @"poet.song.184000.json",
                           @"poet.song.50000.json",
                           @"poet.tang.56000.json",
                           @"poet.song.185000.json",
                           @"poet.song.51000.json",
                           @"poet.tang.57000.json",
                           @"poet.song.186000.json",
                           @"poet.song.52000.json",
                           @"poet.tang.6000.json",
                           @"poet.song.187000.json",
                           @"poet.song.53000.json",
                           @"poet.tang.7000.json",
                           @"poet.song.188000.json",
                           @"poet.song.54000.json",
                           @"poet.tang.8000.json",
                           @"poet.song.189000.json",
                           @"poet.song.55000.json",
                           @"poet.tang.9000.json",
                           @"poet.song.19000.json",
                           @"poet.song.56000.json",
                           @"poet.song.190000.json",
                           @"poet.song.57000.json",
                           ];
;
//        self.tangArray = @"boy";
        
        self.songciauthor = @"author.song.json";
        self.ciArray = @[
                         @"ci.song.14000.json",
                         @"ci.song.3000.json",
                         @"ci.song.15000.json",
                         @"ci.song.4000.json",
                         @"ci.song.16000.json",
                         @"ci.song.5000.json",
                         @"ci.song.0.json",
                         @"ci.song.17000.json",
                         @"ci.song.6000.json",
                         @"ci.song.1000.json",
                         @"ci.song.18000.json",
                         @"ci.song.7000.json",
                         @"ci.song.10000.json",
                         @"ci.song.19000.json",
                         @"ci.song.8000.json",
                         @"ci.song.11000.json",
                         @"ci.song.2000.json",
                         @"ci.song.9000.json",
                         @"ci.song.12000.json",
                         @"ci.song.20000.json",
                         @"ci.song.13000.json",
                         @"ci.song.21000.json",
                         
                         ];
        self.luyuStr = @"lunyu.json";
        self.shijingStr = @"shijing.json";
        self.youmengyingStr = @"youmengying.json";
        self.sishuStr = @"daxue.json";
        
        self.huajianArray = @[
        @"花间集卷第三.json",    @"花间集卷第八.json",
        @"花间集序.json",        @"花间集卷第九.json",    @"花间集卷第六.json",
        @"花间集卷第一.json",    @"花间集卷第二.json",    @"花间集卷第十.json",
        @"花间集卷第七.json",    @"花间集卷第五.json",    @"花间集卷第四.json",
        ];
        
        self.erzhuArray = @[
                            @"authors.json",
                            @"intro.json",
                            @"poetrys.json"
                            ];
    }
    return self;
}

@end