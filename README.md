# LRTransitionNavitationBar
## 两种导航条跳转方式DEMO: 代码足够简单，使用足够简单 一行代码搞定!!!, 欢迎star
### 1 仿微信 wechat 不同颜色导航条的界面跳转时有类似原生的字体渐变效果

![仿微信导航跳转.gif](https://github.com/alexLayer/LRTransitionNavitationBar/blob/master/%E4%BB%BF%E5%BE%AE%E4%BF%A1%E5%AF%BC%E8%88%AA%E8%B7%B3%E8%BD%AC.gif)

### 2 仿 头条/网易/微博 导航条字体无渐变效果

![仿头条导航跳转.gif](https://github.com/alexLayer/LRTransitionNavitationBar/blob/master/%E5%A4%B4%E6%9D%A1%E5%AF%BC%E8%88%AA%E8%B7%B3%E8%BD%AC.gif)


## 用法简介

1.  微信动画导航效果

``` 
继承 LRBaseTransitionViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.topBarBackgroundColor = [UIColor redColor];
    
}
``` 

2.  头条/网易动画导航效果

``` 
继承 LRBaseNoTransitionViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.topBarBackgroundColor = [UIColor redColor];
}
搞定 !
``` 


