```swift 
view.setNeedsLayout() -> 레이아웃을 다시 잡아야 한다고 시스템에게 알리는 역할
view.layoutIfNeeded() -> 레이아웃을 다시 잡아야 하는 상황이면 지금 즉시 수행하도록 하는 역할
   
UIView.animate(withDuration: 1, animations: {
 self.centerYConstraint.constant = 100 // 제약조건 변경 시, view.setNeedsLayout()을 자동 호출
 self.view.layoutIfNeeded()
})
```



#### 동적 레이아웃 구성 방법
- constant, multiplier 변경
- 우선순위 변경
- isActive 활성화 상태 변경