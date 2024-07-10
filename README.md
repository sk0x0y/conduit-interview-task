# 컨두잇 프론트엔드 엔지니어 과제

안녕하세요, 프론트엔드 엔지니어 지원자 양석영입니다.  
컨두잇 프론트엔드 엔지니어 과제를 위한 레포지토리입니다.

## 주요 포인트

- Core, Data, Domain, Presentation 구조의 클린 아키텍처를 기반으로 구성했습니다.
- 간단한 앱 특성을 고려하여 Service 세그먼트는 적용하지 않았습니다.
- get_it 이용하여 DI 적용했습니다.
- 단순 사칙연산 기능을 구현했습니다.
- 내장 test 패키지로 유닛 테스트를 구성했습니다.

### 환경

- Dart SDK 3.4.3
- Visual Studio Code

### 테스트

- test

## 브랜치 전략

- 기본적으로 Git Flow 전략을 따릅니다.
- feature 브랜치는 `feature/ISSUE-123` 형식으로 생성합니다.
- 이 프로젝트의 이슈 번호는 `CIT-000` 형식입니다.

## Git Commit Convention

프로젝트에 적용된 Git 커밋 메시지 규칙은 다음과 같습니다.

```plaintext
chore(BRANCH_PREFIX): [ISSUE-123] 커밋 메시지 제목

- 상세한 변경 사항 설명
- 이슈 해결을 위해 수행한 작업 목록

IF CHERRY-PICK:
cherry-pick: [WALLET-284][feature/WALLET-284] 이벤트 기능 추가

- A 를 했다.
- B API 를 연동했다.

cherry-picked from commit 1a2b3c4d
```
