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

* [Homebrew 설치](https://hongsii.github.io/2017/10/18/homebrew-설치/)

#### zsh

설치

``` shell
$ brew install zsh
```

기본쉘을 zsh 설정

``` shell
$ chsh -s /bin/zsh
```

oh-my-zsh 테마 설정

``` shell
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

$ git clone https://github.com/powerline/fonts.git --depth=1 && cd fonts && ./install.sh && cd .. rm -rf fonts

# Mac은 
$ 
```

#### tmux

터미널 분할 프로그램 

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
* [컬러표](https://i.stack.imgur.com/e63et.png)

#### fzf
//TODO

