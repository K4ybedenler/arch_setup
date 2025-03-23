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

