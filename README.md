# cguess dotfiles

I forked and modified this from [Justin Reese](https://github.com/reefdog/dotfils),
who forked and modified this from [Dan Schultz](https://github.com/slifty/dotfiles),
who in turn started from [Zach Holman's](https://github.com/holman/dotfiles).

## topical

Everything's built around topic areas. If you're adding a new area to your forked dotfiles — say,
"Java" — you can simply add a `java` directory and put files in there. Anything with an extension
of `.zsh` will get automatically included into your shell. Anything with an extension of `.symlink`
will get symlinked without extension into `$HOME` when you run `script/bootstrap`.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew](https://brew.sh/) to install things
  like Chrome and 1Password and stuff. Edit this file before running any initial setup.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is expected to setup `$PATH` or
  similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded last and is expected to setup
  autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To
  avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into your `$HOME`. This is so
  you can keep all of those versioned in your dotfiles but still keep those autoloaded files in
  your home directory. These get symlinked in when you run `script/bootstrap`.

## install

Note: If you have a fresh MacOS install you need to first download 
and install [XCode](https://apps.apple.com/us/app/xcode/id497799835?mt=12). Otherwise Git won't work.

Run this:

```sh
git clone https://github.com/cguess/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory. Everything is
configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`, which sets up a few
paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane macOS defaults, and so on.
Tweak this script, and occasionally run `dot` from time to time to keep your environment fresh and
up-to-date. You can find this script in `bin/`.
