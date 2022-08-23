Hey Chris,

When you're on a Mac, you'll have a choice of Homebrew and Macports. Homebrew was in your experience less reliable - broken casks, conflicts, emojis in incapable terminals - and Macports had key advantages:

- clean installation under `/opt`
- `sudo` required to install ports
- larger number of available packages
- package compatibility guaranteed by the BSD approach of building all from single source tree

However:

- just install Docker from the official thing
- Python source builds will need you to add `/opt/local/include` to `CPATH`

One more thing: the _Emacs_ port you want is `emacs-app`.

Best of luck,
Chris
