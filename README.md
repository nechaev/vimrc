# Minimalistic vimrc

This Vim configuration is meant for servers or simple local usage. There are no plugins, but there are some handy 
settings.

## Installation

#### 1. backup your old .vimrc file if it is necessary

```
cp ~/.vimrc ~/.vimrc_bak
```

#### 2. get the file

recommend
```
curl https://raw.githubusercontent.com/nechaev/vimrc/main/vimrc > ~/.vimrc
```
or  use git

```
git clone https://github.com/nechaev/vimrc.git
ln -s vimrc/vimrc ~/.vimrc
```

#### 3. that's all

## Features

* `*` and `#` work on visual mode too
* more useful highlighting on search
* `<F2>` to save with sudo
* in path `%%` unfolding to current file path
* more useful work with clipboard
