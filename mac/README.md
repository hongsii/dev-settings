# 맥 세팅하기

* [시스템 환경설정](#시스템-환경설정)
    * [키보드](#키보드)
        * [한/영 변환키 변경](#한/영-변환키-변경)
        * [Spotlight키 변경](#Spotlight키-변경)
        * [₩ -> \`로 바꾸기](#₩-->-`로-바꾸기)
    * [트랙패드](#트랙패드)
* [프로그램](#프로그램)

---

## 시스템 환경설정

### 키보드

#### 키 반복 및 반복 지연 시간
* 키 반복 -> 빠르게 / 반복 지연 시간 -> 짧게 로 변경

#### 한/영 변환키 변경

* 시스템 환경설정 > 키보드 > 단축키 > 입력 소스 > 이전 입력 소스 선택 : `command + space`

#### Spotlight키 변경

* 한/영키 변환과 겹쳐서 변경 필요
* 시스템 환경설정 > 키보드 > 단축키 > Spotlight > Spotlight 검색 보기 : `command + shift + space`

#### ₩ -> `로 바꾸기

맥에서 한글 입력시 \` 가 ₩ 로만 입력되는 문제가 있음. 이를 해결하기 위해 다음 경로에 파일을 추가해줄 필요가 있음


`~/Library/KeyBindings`  경로에 `DefaultkeyBinding.dict` 파일을 추가하고 아래 내용을 입력 (만약, 폴더나 파일이 존재하지 않으면 생성)  

```
{
  "₩" = ("insertText:", "`");
}
```

프로그램을 완전히 종료해야 적용되기 때문에 `cmd + q`로 프로그램을 종료 후, 다시 실행

---

## 프로그램

### iTerm2

* [설치](https://www.iterm2.com/)
* iTerm 3.3.0 버전부터 CPU / Mem 등 스테이터스바 이용 가능

#### 스테이터스 바 설정

Preferences 메뉴

* Preferences -> jAppearance -> General 에서 위치 설정 가능
     * Status bar location : Top / Bottom
* Preferences -> Profiles -> Select profile -> Session tab -> 하단의 Status bar enabled 설정 후, Configure Status Bar
    * 배터리, CPU / Memory 사용률 / 네트워크 사용량 / 시계 / 커스텀 액션 설정 / Git 상태 등등 설정 가능
    * Fixed-size Spacer / Empty Space : 두 개로 빈공간을 만들 수 있음

-----

#### brew

Mac의 패키지 매니저

* [Homebrew 설치](https://hongsii.github.io/2017/10/18/homebrew-설치/)

-----

#### zsh

설치

``` shell
$ brew install zsh
```

기본쉘을 zsh로 설정

``` shell
$ chsh -s /bin/zsh
```

##### oh-my-zsh 설치

설치

``` shell
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

powerline을 문자를 표시하기 위한 폰트 설치 (새로운 폰트가 인식되지 않으면 맥 재시동)

``` shell
$ git clone https://github.com/powerline/fonts.git --depth=1 && cd fonts && ./install.sh && cd .. && rm -rf fonts
```

##### zsh-syntax-highlighting 플러그인 설정

oh-my-zsh 플러그인 매니저를 통해 플러그인 사용

``` shell
$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# .zshrc의 plugins에 zsh-syntax-highlighting 추가
$ vim ~/.zshrc
...
plugins=(git ... zsh-syntax-highlighting)
...
```
-----

#### fzf

cli 검색 프로그램 

``` shell
# fzf 설치
$ brew install fzf

# 키 맵핑
$ $(brew --prefix)/opt/fzf/install
```
* [설치 방법](https://github.com/junegunn/fzf#installation)

-----

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

#### vscode

##### Shell Command 설치

* 팔레트(⇧ ⌘ P) 실행
* 'shell command' 입력
* 'Shell Command: Install 'code' command in PATH' 선택
* 재시작 (터미널에서 code 명령어 사용 가능)


#### python 설치

* python3 설치
* 명령어 alias python3 -> python
* pip 설치 : easy_install pip

#### Ruby 설치

* gem install bropages : 쉘 명령어 사용법

#### 맥 전체 설정

install.sh 실행
