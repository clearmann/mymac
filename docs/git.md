# Git

先配 name 和 email。
```
git config --global user.name "clearmann"
git config --global user.email "clearmann@gmail.com"
```

再执行这两条命令

```
git config --global --add push.default current
git config --global push.autoSetupRemote true
```
> 好处：
> 1. 不需要git push origin xxx，只需要 git push
> 2. 再也不会遇到 `no upstream branch`的报错
> 3. 也不需要git push --set-upstream origin xxx && git push
> 4. 总是习惯本地的分支名和远程相同的分支名相关联

在修改 ~/.gitignore_global, 加入其他的 ignore 配置。
```
*~
.DS_Store
.idea
loc/
```