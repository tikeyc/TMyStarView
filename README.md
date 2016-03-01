# TMyStarView

只需传入星星的图片

//代码创建1 ＜/br＞
MyStarView *starView = [[MyStarView alloc] initWithFrame:CGRectMake(100, 100, 0, 0) withGrayStarImgName:@"farm_star_frame" withColorStarImgName:@"farm_srat_fill"];＜/br＞

[self.view addSubview:starView];＜/br＞
starView.rating = 3.5;＜/br＞
//xib创建2＜/br＞
[self.xibStarView setWithGrayStarImgName:@"fr_big_star_grey" withColorStarImgName:@"fr_big_srat_yellow"];＜/br＞
self.xibStarView.rating = 4.4;＜/br＞
self.xibStarView.isTouch = YES;＜/br＞


![image](https://github.com/tikeyc/TMyStarView/raw/master/ReadMe/screen.png)