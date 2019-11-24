## UI Guide

- pixel과 point의 관계 정리
- 개발시에는 point사용


@View의 구조
- 하나의 화면은 몇개으 계층으로 나누어져 있음
- 아이폰 좌표의 시작 : 좌상단 (0, 0)에서 시작 (MacOS는 좌하단)
- View Frame의 좌표는 상위뷰를 기준으로 결정
- addSub의 기준이 main view인지 sub view인지 명확하게 확인하기



@Frame and Bounds
- frame은 화면을 기준 / bound는 이미지(자기자신)을 기준


</br>


## UIViewContentMode
- 이미지를 화면에 맞게 표현 -> 사이즈 조정을 통하여
