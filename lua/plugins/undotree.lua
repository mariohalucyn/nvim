return {
  "mbbill/undotree",
  config = function ()
    -- Undotree uses an external "diff" command to show differences between file versions.
    -- On Linux/macOS, "diff" is available by default, but Windows doesn’t include it.
    -- This can cause Undotree to error when trying to compare changes.
    -- To fix this, we set the diff command to "FC", which is the Windows equivalent of "diff".
    -- This makes Undotree work properly on Windows systems.
    --vim.g.undotree_DiffCommand = "FC"

    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
  end
}
