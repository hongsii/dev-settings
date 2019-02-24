# 맥 세팅하기

* [시스템 환경설정](#시스템-환경설정)
    * [키보드](#키보드)
        * [한/영 변환키 변경](#한/영-변환키-변경)
        * [Spotlight키 변경](#Spotlight키-변경)
    * [트랙패드](#트랙패드)
* [프로그램](#프로그램)

---

## 시스템 환경설정

### 키보드

#### 한/영 변환키 변경

* 시스템 환경설정 > 키보드 > 단축키 > 입력 소스 > 이전 입력 소스 선택 : `command + space`

#### Spotlight키 변경

* 한/영키 변환과 겹쳐서 변경 필요
* 시스템 환경설정 > 키보드 > 단축키 > Spotlight > Spotlight 검색 보기 : `command + shift + space`

### 트랙패드

// TODO

---

## 프로그램

### iTerm2
// TODO

#### brew
// TODO

#### tmux

터미널 분할 프로그

``` shell
$ brew install tmux
```

`~/.tmux.conf` 를 만들고 내용을 추가하면 커스텀 설정을 할 수 있음  

* 설정 조회 명령어
    * `tmux show-options -g` : 전역 설정 조회
    * `tmux show-options -w` : 윈도우 설정 조회
    * `tmux show-options -s` : 서버 설정 조회

설정 파일을 적용하려면 아래의 명령어를 입력

``` shell
$ tmux source-file ~/.tmux.conf
```

* 설정 명령어
    * `set-option (alias: set)` : 설정 명령어
    * `set-window-option (alias: setw)` : 윈도우 설정 명령어

