#DVOMarqueeView
====

A lightweight view that adds marquee scrolling to any view.

Sample
-------
<br>

<img src="./Demo/demo.gif" align="middle" width="280" />

<br>
####Usage:

```objective-c
UILabel *label = [UILabel new];
label.text = @"To be, or not to be: that is the question: Whether 'tis nobler in the mind to suffer...";
[label sizeToFit];

DVOMarqueeView *labelMarquee = [[DVOMarqueeView alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
labelMarquee.viewToScroll = label;
[self.window addSubview:labelMarquee];

[labelMarquee beginScrolling];
```

###Background
DVOMarqueeView was built during the creation of [Diveo](http://appstore.com/diveo), an iOS app that lets you share beautiful videos with friends.