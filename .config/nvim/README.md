### Install
* * *
I use `live_grep` and `grep_string` so to have those working install -> 
[Ripgrep]("https://github.com/BurntSushi/ripgrep")
* * * 

### To avoid confusion
When launching Neovim and doing `:Lazy` it will show that telescope related plugins are not loaded.
That is because they are loaded when given action has occurred, for example when a key combination is used
that performs an action that requires those plugins. After that if you do `:Lazy` you'll see them loaded 
or `:chechhealth telescope` you'll see telescope being healthy.