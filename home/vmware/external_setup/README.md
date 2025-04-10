For future me:

When I did the NixOS installation for the first time, there were quite a lot of troubles and to get rid of it i had to accept to do some external setups.

Ofc I knew about override, but I'm not quite sure if it actually worked, and I don't want to learn anything more (installing NixOS is already a pain itself). That's why I had to do some dirty tricks: nix-ld and then setting up some portion of the config manually.

Here's the list of that, so in the future if you want to rebuild the system again, you are sure that you will have a guide that you can follow:

# LazyVim

LazyVim was the biggest success I did to make it work on a declarative system like this. It was a pain, but it's so worth it.

Now, LazyVim was built on top of nixvim (because nvf was a horrible mess), and after successfully building the lazyvim, I immediately had to do this:

- I can't make alpha-nvim to work on the `default.nix`, so that's why I manually enable `ui.alpha` as well as `dap.lua` and `dap.core` in `:LazyExtras`.
- I enabled Mason.nvim (it just works), and what I did is installing all the formatters, Dap, LSP, and linters for all the language I needed (Python, C, C++, Rust, Lua, Latex, Markdown).
- I enabled Treesitter as well, so I could install all the treesitter and let them automatically install everything I needed.

# Countdown

My workspace involved a lot of distraction, so that's why I needed a Countdown clock to make myself extra focus on the work. There's a lot of cool repos out there, but the one that stood out the most for me was `Countdown`. It was written in Go and there were no official package available for Nixpkgs, so that's why I had to install it manually through go.

Now, I knew that I could use the `programs.go.packages` thing to install it, but the way it worked is that it would, literally, use `go get <repo-link>` instead of `go install <repo-link>`, which was the command that the repo required me to install. After a few hard attempts, I gave up. I just installed it manually and it just worked.

The command was: `go install github.com/antonmedv/countdown@latest`

# i3lock-color

I had installed `i3lock-color` through `configurations.nix` already, but the setting up, it's dangerous. That's why I had included here in this directory the executable file to execute `i3lock-color` with the shortcuts available on i3 as `exec ~/.config/i3/i3lock`. Make sure to do that.


