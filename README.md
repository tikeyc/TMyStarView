# THorizontalAlbumTableView

只需传入星星的图片

//代码创建1
MyStarView *starView = [[MyStarView alloc] initWithFrame:CGRectMake(100, 100, 0, 0) withGrayStarImgName:@"farm_star_frame" withColorStarImgName:@"farm_srat_fill"];

[self.view addSubview:starView];
starView.rating = 3.5;
//xib创建2
[self.xibStarView setWithGrayStarImgName:@"fr_big_star_grey" withColorStarImgName:@"fr_big_srat_yellow"];
self.xibStarView.rating = 4.4;
self.xibStarView.isTouch = YES;


![image](https://github.com/tikeyc/THorizontalAlbumTableView/raw/master/ReadMe/screen.png)