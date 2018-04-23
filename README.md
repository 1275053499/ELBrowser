# ElBrowser
	
###仿朋友圈图片浏览器

####使用方法
```
   ElBrowser * browser = [[ElBrowser alloc]init];
    browser.originalUrls = originArr;//大图
    browser.smallUrls = smallArr;//小图
    browser.width = 200; // 控件宽度
    [self.view addSubview:browser];
    [browser mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(200);
    }];
```

####代码说明
最主要解决的问题,拖拽手势与collectionView滑动冲突的解决.
当手指接触到屏幕的时候,会调用:

```
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    if (gestureRecognizer == self.panGes) {
        //记录刚接触时的坐标
        firstTouchPoint = [touch locationInView:self.window];
    }
    return YES;
}
```


当手指开始滑动的时候,会调用:

```
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    //判断是否是左右滑动  滑动区间设置为+-10
    CGPoint touchPoint = [gestureRecognizer locationInView:self.window];
    CGFloat dirTop = firstTouchPoint.y - touchPoint.y;
    if (dirTop > -10 && dirTop < 10) {
        return NO;
    }
    //判断是否是上下滑动
    CGFloat dirLift = firstTouchPoint.x - touchPoint.x;
    if (dirLift > -10 && dirLift < 10 && self.imageView.frame.size.height > [UIScreen mainScreen].bounds.size.height) {
        return NO;
    }
    
    return YES;
}
```




### 效果图

![image](https://github.com/LifeForLove/ELBrowser/blob/master/QQ20180423-151831-HD.gif)


### Concluding remarks

* 如在使用中, 遇到什么问题或有更好建议者, 请记得 [Issues me](https://github.com/LifeForLove/ELBrowser/issues) 或 getElementByYou@163.com 邮箱联系我


