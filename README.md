# JKPointProgressView

实现一个类似于UIPageControl的点状的进度条

使用方法很简单

###1.创建初始化
_progressView = [[JKPointProgressView alloc] initWithPointNumber:14];//总点数
_progressView.frame = CGRectMake(40, 100, SCREEN_WIDTH-80, 20);

###2.设置当前的点数
[_progressView setProgressedNumberOfPoint:0];

###3.addSubView
[self.view addSubview:_progressView];

##还有其它属性可以设置

@property (nonatomic, assign) NSInteger numberOfPoint;//总点数

@property (nonatomic, assign) CGFloat RadiusOfPoint;//圆点的半径

@property (nonatomic, strong) UIColor *progressedColor;//progress tint 进度颜色

@property (nonatomic, strong) UIColor *unProgressedColor;//track tint 默认颜色

@property (nonatomic, assign) NSInteger progressedNumberOfPoint;//进度点数
