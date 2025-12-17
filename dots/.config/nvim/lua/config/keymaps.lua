function telescopeMaps()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find [f]iles' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live [g]rep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope [b]uffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope [h]elp tags' })

    vim.keymap.set('n', '<leader>ft', ':TodoTelescope<CR>', { desc = 'Telescope [t]odo comments' })
end

function snacksMaps()
    vim.keymap.set('n', '<leader>og', Snacks.lazygit.open, { desc = "Open Lazy[g]it" })

    vim.keymap.set('n', '<leader>gi', function() Snacks.picker.gh_issue() end, { desc = "GitHub [i]ssues" })
    vim.keymap.set('n', '<leader>gI', function() Snacks.picker.gh_issue({state="all"}) end, { desc = "GitHub [i]ssues (all)" })
    vim.keymap.set('n', '<leader>gp', function() Snacks.picker.gh_pr() end, { desc = "GitHub [p]ull requests" })
    vim.keymap.set('n', '<leader>gP', function() Snacks.picker.gh_pr({state="all"}) end, { desc = "GitHub [p]ull requests (all)" })

    vim.keymap.set('n', '<leader>oe', Snacks.explorer.open, { desc = "Open file [e]xplorer" })

    vim.keymap.set('n', '<leader>u', Snacks.picker.undo, { desc = "[U]ndo history" })

    vim.keymap.set('n', '<leader>t', Snacks.terminal.open, { desc = "Open [t]erminal"})
end

-- these are keymaps that are either non-plugin-dependent, only one is necessary for a plugin, or really important
vim.keymap.set('n', '<leader>ol', ':Lazy<CR>', {desc = "Open [L]azy.nvim"})
vim.keymap.set('n', '<leader>i', ':GuessIndent<CR>', {desc = "Auto-indent file"})

snacksMaps()
telescopeMaps()

