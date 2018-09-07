# TTStarEvaluationView
灵活的星星评价视图 flexible star evaluation view

```Objective-C
@property (nonatomic, strong, nonnull) UIImage *starImage; // 星星图片，默认为21*21的星星图片
@property (nonatomic, strong) UIImage *starImageForHalf; // 半星图片
@property (nonatomic, strong) UIImage *unstarImage; // 未选的星星图片

/**
 在unstarImage为空的时候才会起作用，自动绘制选中和未选中的星星
 */
@property (nonatomic, strong) UIColor *starColor; // 星星颜色，默认为黄色
@property (nonatomic, strong) UIColor *unstarColor; // 未选的星星颜色，默认为浅灰色

@property (nonatomic, assign) CGFloat starSpace; // 间距 默认为图片宽度的一半
@property (nonatomic, assign) CGFloat horiInset; // 前后缩进，默认为10，建议不要设置为0，否则满星和0星不容易选中

@property (nonatomic, assign) NSInteger numberOfStars; // 星星数量，默认为5
@property (nonatomic, assign) NSInteger scorePerStar; // 一个星星代表的分数，默认为1
@property (nonatomic, assign) CGFloat   currentScore; // 当前分数
@property (nonatomic, assign) CGFloat   scoreMinPace; // 分数的最小刻度，默认，有半星图片时为半星分数，否则为1星分数,取值范围0.1-0.5,整数
@property (nonatomic, assign) BOOL      canBeZero; // 是否可以选中0星，默认YES

@property (nonatomic, strong) void(^didEvaluateBlock)(CGFloat score); // 选中星星后的回调
```
