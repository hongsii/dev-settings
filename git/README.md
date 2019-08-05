* 디렉토리별 Git 설정 적용 - [링크](https://blog.outsider.ne.kr/1448)

```
[user]
    email = hongsii.dev@gmail.com
    name = hongsii
[github]
    user = hongsii

```

~/.gitconfig 아래 내용 추가

``` git
# 지정한 경로에 설정 파일 적용
[includeIf "gitdir:~/hongsii/"]
    path = .gitconfig-hongsii
```
