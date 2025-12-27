local function disableArrowMaps()
    vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
    vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
    vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
    vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
end

local function telescopeMaps()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find [f]iles' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live [g]rep' }) -- finds in current directory files
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope [b]uffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope [h]elp tags' })
    vim.keymap.set('n', '<leader>fz', builtin.current_buffer_fuzzy_find, {desc="Telescope fu[z]zy find in current file"})

    vim.keymap.set('n', '<leader>ft', ':TodoTelescope<CR>', { desc = 'Telescope [t]odo comments' })

    vim.keymap.set('n', '<leader>fls', builtin.lsp_document_symbols, {desc="Telescope find [s]ymbols"})
    vim.keymap.set('n', '<leader>flS', builtin.lsp_dynamic_workspace_symbols, {desc="Telescope find [S]ymbols (entire workspace)"})
end

local function snacksMaps()
    vim.keymap.set('n', '<leader>t', Snacks.terminal.open, { desc = "Open [t]erminal"})
    vim.keymap.set('n', '<leader>og', Snacks.lazygit.open, { desc = "Open Lazy[g]it" })

    vim.keymap.set('n', '<leader>t', Snacks.terminal.open, { desc = "Open [t]erminal"})
    vim.keymap.set('n', '<leader>og', Snacks.lazygit.open, { desc = "Open Lazy[g]it" })
    vim.keymap.set('n', '<leader>oe', Snacks.explorer.open, { desc = "Open file [e]xplorer" })

    vim.keymap.set('n', '<leader>gi', function() Snacks.picker.gh_issue() end, { desc = "GitHub [i]ssues" })
    vim.keymap.set('n', '<leader>gI', function() Snacks.picker.gh_issue({state="all"}) end, { desc = "GitHub [i]ssues (all)" })
    vim.keymap.set('n', '<leader>gp', function() Snacks.picker.gh_pr() end, { desc = "GitHub [p]ull requests" })
    vim.keymap.set('n', '<leader>gP', function() Snacks.picker.gh_pr({state="all"}) end, { desc = "GitHub [p]ull requests (all)" })

    vim.keymap.set('n', '<leader>u', Snacks.picker.undo, { desc = "[U]ndo history" })
end

local function lspMaps()
    vim.keymap.set('n', '<leader>lr', ':LspRestart<CR>', {desc = "[R]estart LSP"})
    vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, {desc = "[F]ormat file (LSP)"})
    vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, {desc = "Run code [a]ction (LSP)"})
    vim.keymap.set('n', '<leader>ln', vim.lsp.buf.rename, {desc = "Re[n]ame symbol (LSP)"})
    vim.keymap.set('n', '<leader>lh', function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end, {desc = "Toggle inlay [h]ints (LSP)"})
    vim.keymap.set('n', '<leader>li', ':LspInfo<CR>', {desc = "Get LSP [I]nfo"})

    -- nvim default keymaps:
    --- gra: run a code action (on diagnostic) 
    --- gri: go to implementation
    --- grn: rename symbol
    --- grr: go to reference(s)
    --- grt: go to type definition (find the definition of the type of the symbol)
    --- gO: list all document symbols
    --- [insert] Ctrl-s: signature help (shows documentation, unlike blink.cmp (Ctrl-k))
end

local function diagnosticMaps()
    vim.keymap.set('n', '<leader>ds', vim.diagnostic.open_float, {desc = "[S]how diagnostic"})
    vim.keymap.set('n', '<leader>dt', function() vim.diagnostic.config({virtual_text = not vim.diagnostic.config().virtual_text}) end, {desc="Toggle diagnostic messages"})
end

local function windowMaps()
    vim.keymap.set('n', '<C-h>', '<C-w>h', {desc = "Focus upper window"})
    vim.keymap.set('n', '<C-j>', '<C-w>j', {desc = "Focus left window"})
    vim.keymap.set('n', '<C-k>', '<C-w>k', {desc = "Focus right window"})
    vim.keymap.set('n', '<C-l>', '<C-w>l', {desc = "Focus lower window"})
end

local function sessionMaps()
    vim.keymap.set('n', '<leader>sl', function() require("persistence").load({ last = true }) end, {desc="Load the [l]ast session"})
    vim.keymap.set('n', '<leader>ss', function() require("persistence").select() end, {desc="[S]elect a session"})
end

local function toolMaps()
    vim.keymap.set('n', '<leader>rf', function() require("conform").format() end, {desc="Run standalone [f]ormatter"})
    vim.keymap.set('n', '<leader>rl', function() require("lint").try_lint() end, {desc="Run [l]inter manually"})
end

local function dapMaps()
    vim.keymap.set('n', '<leader>bn', function() require("dap").continue({new=true}) end, {desc="[N]ew session (DAP)"})
    vim.keymap.set('n', '<leader>bt', function() require("dap").terminate() end, {desc="[T]erminate session (DAP)"})
    vim.keymap.set('n', '<leader>bx', function() require("dap").disconnect() end, {desc="Disconnect session (DAP)"})

    vim.keymap.set('n', '<leader>bb', function() require("dap").toggle_breakpoint() end, {desc="Toggle [b]reakpoint (DAP)"})
    vim.keymap.set('n', '<leader>bc', function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, {desc="Set [c]onditional breakpoint (DAP)"})
    vim.keymap.set('n', '<leader>bl', function() require("dap").set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end, {desc="Set [l]ogpoint (DAP)"})
    vim.keymap.set('n', '<leader>bd', function() require("dap").clear_breakpoints() end, {desc="[D]elete all breakpoints (DAP)"})

    vim.keymap.set('n', '<F5>', function() require("dap").continue() end, {desc="[C]ontinue (DAP)"})
    vim.keymap.set('n', '<F10>', function() require("dap").step_over() end, {desc="Step [o]ver (DAP)"})
    vim.keymap.set('n', '<F11>', function() require("dap").step_into() end, {desc="Step [i]nto (DAP)"})
    vim.keymap.set('n', '<F12>', function() require("dap").step_out() end, {desc="Step o[u]t (DAP)"})

    vim.keymap.set({'n', 'v'}, '<leader>bh', function() require("dap.ui.widgets").hover() end, {desc="[H]over (DAP)"})
    vim.keymap.set('n', '<leader>bm', function() require("dap-view").toggle() end, {desc="Toggle [m]enu (DAP)"})
    vim.keymap.set({'n', 'v'}, '<leader>bw', function() require("dap-view").add_expr() end, {desc="[W]atch expression (DAP)"})
end

-- these are keymaps that are either non-plugin-dependent, only one is necessary for a plugin, or really important
vim.keymap.set('n', '<leader>ol', ':Lazy<CR>', {desc = "Open [L]azy.nvim"})
vim.keymap.set('n', '<leader>om', ':Mason<CR>', {desc = "Open [M]ason"})
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>') -- unhighlights searches after pressing Esc, but still highlights future search requests
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

disableArrowMaps()
snacksMaps()
telescopeMaps()
lspMaps()
diagnosticMaps()
windowMaps()
sessionMaps()
toolMaps()
dapMaps()
-- trouble.nvim mappings are in the plugin file
