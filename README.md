1. It's from FTCoreText
2. fixed much bugs
3. add remove imge support(depend on SDWebImage library)
4. default tag has been change, please read the source code of FTCoreTextView.m

Node:
There is hack within the code. 
When the image is remote address, it's tag text will be change to "\n"
and it will display correctly
If the image is a local file, it's tag text will be change to some space.
and the image will insert into the text, but if it's a large image, 
it will cover the text.

I can't find a good idea to solve this problem.
