## example

```shell
git clone --single-branch --branch gh-pages git@github.com:RainerChiang/simpleness.git public/
cd public/
git config user.name "Rainer Chiang"
git config user.email ""
cd ..
./deploy.sh
```

```
git submodule add --branch gh-pages git@github.com:RainerChiang/simpleness.git public/
git submodule init
git submodule update
```
