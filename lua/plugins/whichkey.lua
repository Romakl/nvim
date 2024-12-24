local wk = require("which-key")

wk.register({
    -- Find group
    f = {
        name = "Find", -- Group name
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        t = { "<cmd>Telescope live_grep<cr>", "Find Text" },
        b = { "<cmd>Telescope buffers<cr>", "Find Buffer" },
        h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
    },

    -- Git group
    g = {
        name = "Git",
        b = { "<cmd>GitBranches<cr>", "Open Branches" },
        c = { "<cmd>GitCommits<cr>", "Open Commits" },
        s = { "<cmd>GitStatus<cr>", "Open Status" },
    },

    -- Diagnostics
    e = { "<cmd>lua vim.diagnostic.open_float()<cr>", "Open Diagnostic Window" },

    -- LSP group
    l = {
        name = "LSP",
        D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Go to Declaration" },
        d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Go to Definition" },
        k = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover" },
    },

    -- NvimTree group
    t = {
        name = "NvimTree",
        t = { "<cmd>NvimTreeToggle<cr>", "Tree Toggle" },
        f = { "<cmd>NvimTreeFocus<cr>", "Tree Focus" },
    },

    -- TodoList group
    n = {
        name = "TodoList",
        l = { "<cmd>TodoListOpen<cr>", "Open List" },
    },

    -- Terminal
    s = { "<cmd>ToggleTerm<cr>", "Open Terminal" },

    -- Ruff
    r = { "<cmd>Ruff<cr>", "Run Ruff" },

    -- Color Schemes group
    c = {
        name = "Color Schemes",
        s = { "<cmd>ColorSchemePicker<cr>", "Open Color Scheme Picker" },
    },
}, { prefix = "<leader>" }) -- Set global prefix
