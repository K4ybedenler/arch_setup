return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local lsp = require("lspconfig").util.default_config
        lsp.capabilities = vim.tbl_deep_extend(
            "force",
            lsp.capabilities,
            require("cmp_nvim_lsp").default_capabilities()
        )

        vim.api.nvim_create_autocmd("LspAttach", {
            desc = "LSP actions",
            callback = function(event)
                local opts = { buffer = event.buf }
                local mappings = {
                    ["K"] = "hover",
                    ["gd"] = "definition",
                    ["gD"] = "declaration",
                    ["gi"] = "implementation",
                    ["go"] = "type_definition",
                    ["gr"] = "references",
                    ["gs"] = "signature_help",
                    ["<F2>"] = "rename",
                    ["<F3>"] = "format",
                    ["<F4>"] = "code_action",
                }
                for key, action in pairs(mappings) do
                    vim.keymap.set("n", key, "<cmd>lua vim.lsp.buf." .. action .. "()<cr>", opts)
                end
            end,
        })

        require("mason").setup({})
        require("mason-lspconfig").setup({
            ensure_installed = { "cmake", "marksman", "yamlls", "lua_ls", "clangd" },
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                end,
            },
        })

        local cmp = require("cmp")
        cmp.setup({
            sources = {
                { name = "nvim_lsp" },
            },
            mapping = {
                ["<C-y>"] = cmp.mapping.confirm({ select = false }),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<Up>"] = cmp.mapping.select_prev_item({ behavior = "select" }),
                ["<Down>"] = cmp.mapping.select_next_item({ behavior = "select" }),
                ["<C-p>"] = cmp.mapping(function()
                    if cmp.visible() then
                        cmp.select_prev_item({ behavior = "insert" })
                    else
                        cmp.complete()
                    end
                end),
                ["<Tab>"] = cmp.mapping(function()
                    if cmp.visible() then
                        cmp.select_next_item({ behavior = "insert" })
                    else
                        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, true, true), "n", true)
                    end
                end),
            },
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },
        })
    end,
}
