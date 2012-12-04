1. It's from FTCoreText
2. fixed much bugs
3. add remote imge support(depend on SDWebImage library)
4. default tag has been change, please read the source code of FTCoreTextView.m

Usage：
1. add FTCoreText*
2. add SDWebImage(you can download it from github, or find it in the demo folder)
3. add Frameworks:CoreText, CFNetwork, ImageIO

Restrict:
1. Every remote image must be display in an individual line
2. Only every small local image support for display with text in the same line, 
   it usually is an emotion image.