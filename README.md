# Just Fedora Things
Offers [just](https://github.com/casey/just#just) recipes to enhance Fedora's accessibility for beginners.

## Install the dependencies
```
sudo dnf install curl just
```

## Install (or update) the recipes
```
curl -s https://raw.githubusercontent.com/trofosila/jft/master/create-justfile.sh | sh
```

## What the [script](https://raw.githubusercontent.com/trofosila/jft/master/create-justfile.sh) does
It only creates a `.justfile` in your home directory. You can inspect the content of the file with:
```
cat ~/.justfile
```

## How to use the script
Run `just` to list all available recipes or `just recipe-name` to execute one of them.

## Available recipes
- `default`  
List all available recipes.
- `amd-p-state-enable`, `amd-p-state-disable`  
Enable or disable passive mode in AMD P-State CPU Performance Scaling Driver.  
Requires root.  
Required dependencies: grubby (`sudo dnf install grubby`).
- `amd-p-state-test`  
Show CPU cores frequencies.