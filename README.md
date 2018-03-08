# SLMedia
### 1.CocoaPods集成：
```
pod 'SLMedia'
```

#### 2.代码示例：

```
// 目前全屏模式切换，只支持frame布局
let frame = CGRect(x: 0, y: 0, width:300, height: 200)
let videoPreviewView = SLVideoPlayerView(frame: frame)
self.view.addSubview(videoPreviewView)
```

