좌충우돌 Swift 첫 프로젝트... 내가 하고자 하는 것

**1. RxSwift로 MVVM패턴을 적용해보자. 디자인 패턴은 앱 개발에 매우 중요하다!**
**2. 스토리보드를 쓰지 말고, 코드로 UI를 전부 짜보자! 처음 배울 때 이것저것 해보는 게 중요!**
3. 만약 시간이 된다면 Realm 대신 node.js로 간단한 서버를 만들어보고 싶다. 하지만 여기에 집중하면 yak shaving이 되니까, 이 프로젝트를 통해 하고 싶은 것을 명확히 하자!

--- 

# To do
## Initial Screen
1. Navigation Controller programmatically
- Navigation controller를 코드로 추가한다.
- segue를 코드로 설정한다.
    - 각 캐릭터마다 다른 정보를 가지고 다음 화면으로 간다

2. UICollectionView programmatically
- UICollectionView를 코드로 작성
- UICollectionViewCell을 코드로 작성
- 맨 마지막 grid에는 + 표시를 하고 새로운 캐릭터를 추가할 수 있게 하자

3. 닉네임 입력화면 만들기
- UITextField를 코드로 작성 
- Keyboard를 거슬리지 않게 적절한 pod를 사용해보자.

4. Data 관리
- 한번 추가한 캐릭터 닉네임을 RealmSwift에 저장해보자
- 메인 화면을 키면 닉네임 별로 아이템 레벨, 직업명을 가져올 수 있게 하자
    - 캐릭터 전용 Model을 만들고, API도 만들어야 할 수도 있다.
- RxSwift로 캐릭터들의 상태를 저장할 수 있도록 MVVM을 배우고 적용해보자 

5. 그 외
- Dark mode를 어떻게 코드로 적용시킬까?

