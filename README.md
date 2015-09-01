# LLPictureShow
基于VI修改后的图片浏览滚动视图，一句话调用。

####滚动视图图片浏览

    1.可以将浏览页面单独使用，也可以直接使用滚动浏览
    2.单独页面浏览基于Vi项目修改，加以简化， 可以加载网络图片，本地图片。
    3.页面可以高度自定义，浏览模式仿照微信图片浏览

#### 效果图
    图片经过压缩，会很模糊，具体效果请下载DEMO自行观看
      ![](https://github.com/yimouleng/LLPictureShow/blob/master/123.gif)
      
#### 使用方法

    1.单独使用浏览页面   
       直接添加头文件 LLPhotoView.h     
            调用- (id)initWithFrame:(CGRect)frame andImage:(NSArray *)imageArr;方法创建
    2.使用滚动试图浏览
        添加头文件 LLPhotoScv.h
            调用 - (id)initWithFrame:(CGRect)frame andImage:(NSArray *)imageArr; 方法创建
            
    3. 具体使用请下载DEMO。
#### 已知BUG
  暂无。若有发现请及时联系我，同时欢迎各路朋友优化代码。
  
####  Blog
     http://yimouleng.com/     



