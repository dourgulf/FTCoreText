
![](http://pic.twitter.com/k0HWKmVD)
## 概要
这个库是来自FTCoreText，原项目已经好久不更新了，里面还有不少的BUG，而且我自己有一些特殊的需求，于是新开了此项目。添加了一个支持从远程下载照片的功能。
## 用法
1. 添加FTCoreText*
2. 添加第三方的库SDWebImage（你可以在Demo项目里面找到）也可以自己从[Github](https://github.com/rs/SDWebImage)自己下载。（不好意思，我不是很会用Submodule的功能.^_^。）
3. 添加依赖的Framework：
	* CoreText
	* CFNetwork
	* ImageIO

## 已知问题（或者叫限制）
1. 远程加载的图片（[img]标签）必须单独一行显示，否则会和文字重叠在一起（我已经研究了很久依旧无法取消这个限制，有高手麻烦告诉我一下）
2. 本地的小图片（[smile]标签）（对我的需求来说就是表情符号，它的大小是适合正好和文字一样放在同一样的）可以和文字放一起，但是你一定要定义好它的对齐方式（参考Demo的coreTextStyle方法）
3. 我做了一个很不合理的约定：http或者https开头的照片就认为是远程图片，没有次开头的就认为是本地的小图片。

### 如果你遇到什么疑问的话，先阅读一下Demo项目，尤其是里面的coreTextStyle方法，它可能会解开你的很多疑问：）
