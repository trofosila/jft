# Just Fedora Things
Offers [just](https://github.com/casey/just#just) recipes to enhance Fedora's accessibility for beginners.

## Install the dependencies
```
sudo dnf install just
```

## Install the recipes
```
curl -s https://raw.githubusercontent.com/trofosila/jft/master/create-justfile.sh | sh
```

## What the script does
It only creates a `.justfile` in your home directory. You can inspect the content of the file with:
```
cat ~/.justfile
```

## How to use the script
Run `just` to list all available recipes or `just recipe-name` to execute one of them.