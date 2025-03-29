return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window
    },
    config = function()
        require("neo-tree").setup({
            window = {
                width = 30,
                mappings = {
                    ["<cr>"] = "open",
                    ["s"] = "open_rightbelow_vs",
                },
            },
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_hidden = false,
                },
                follow_current_file = {
                    enabled = true,
                },
                use_libuv_file_watcher = false,
            },
            event_handlers = {
                {
                    event = "neo_tree_buffer_enter",
                    handler = function()
                        vim.opt_local.number = true
                        vim.opt_local.relativenumber = true
                    end,
                },
            },
        })
    end,
}
