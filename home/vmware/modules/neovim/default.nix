{ inputs, lib, config, pkgs, ... }: {
   xdg.configFile."nvim/lua/plugins".source = ./plugins;
   programs.nixvim = {
     enable = true;
	    # Reduce closure size
            enableMan = false;
            withPython3 = false;
            withRuby = false;

            extraPackages = with pkgs; [
              # LazyVim
              lua-language-server
              stylua
              # Telescope
              ripgrep
            ];

            extraPlugins = [ 
              pkgs.vimPlugins.lazy-nvim 
            ];
            #
            extraConfigLua = 
              ''
                require("lazy").setup({
                  defaults = {
                    lazy = true,
                  },
                  spec = {
                    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
                    -- The following configs are needed for fixing lazyvim on nix
                    -- force enable telescope-fzf-native.nvim
                    { "nvim-telescope/telescope-fzf-native.nvim", enabled = true },
                    -- disable mason.nvim, use config.extraPackages
                    { "williamboman/mason-lspconfig.nvim", enabled = true },
                    { "williamboman/mason.nvim", enabled = true },
                    -- uncomment to import/override with your plugins
                    { import = "plugins.sniprun" },
                    { import = "plugins.markdown" },
                    { import = "plugins.mdmath" },
                    { import = "plugins.dap" },
                    { import = "plugins.explorer" },
                    { import = "plugins.dashboard" },
                    { import = "plugins.lazy_key" },
                    { import = "plugins.zen" },
                    { import = "plugins" },
                    -- put this line at the end of spec to clear ensure_installed
                    { "nvim-treesitter/nvim-treesitter", opts = function(_, opts) opts.ensure_installed = {} end },
                  },
                })

                require('mdmath').build()
                require('render-markdown').enable()
                require('sniprun').setup()
              '';
   };
}
