return {
  "sindrets/diffview.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  cmd = {
    "DiffviewOpen",
    "DiffviewClose",
    "DiffviewToggleFiles",
    "DiffviewFocusFiles",
    "DiffviewRefresh",
    "DiffviewFileHistory",
  },
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Open Diffview" },
    { "<leader>gD", "<cmd>DiffviewClose<cr>", desc = "Close Diffview" },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "File History" },
    { "<leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "Branch History" },
  },
  opts = {
    diff_binaries = false,
    enhanced_diff_hl = true,
    use_icons = true,
    view = {
      default = {
        -- 横並び表示設定
        layout = "diff2_horizontal",
        winbar_info = true,
      },
      merge_tool = {
        layout = "diff3_horizontal",
        disable_diagnostics = true,
      },
      file_history = {
        layout = "diff2_horizontal",
        winbar_info = true,
      },
    },
    file_panel = {
      listing_style = "tree",
      tree_options = {
        flatten_dirs = true,
        folder_statuses = "only_folded",
      },
      win_config = {
        position = "left",
        width = 35,
      },
    },
    file_history_panel = {
      log_options = {
        git = {
          single_file = {
            diff_merges = "combined",
          },
          multi_file = {
            diff_merges = "first-parent",
          },
        },
      },
      win_config = {
        position = "bottom",
        height = 16,
      },
    },
    keymaps = {
      disable_defaults = false,
      view = {
        ["<tab>"]      = "<cmd>DiffviewToggleFiles<cr>",
        ["gf"]         = "<cmd>DiffviewGotoFile<cr>",
        ["<C-w><C-f>"] = "<cmd>DiffviewGotoFile split<cr>",
        ["<C-w>gf"]    = "<cmd>DiffviewGotoFile tab<cr>",
        ["<leader>e"]  = "<cmd>DiffviewFocusFiles<cr>",
        ["<leader>b"]  = "<cmd>DiffviewToggleFiles<cr>",
      },
      file_panel = {
        ["j"]          = "<cmd>DiffviewNextEntry<cr>",
        ["<down>"]     = "<cmd>DiffviewNextEntry<cr>",
        ["k"]          = "<cmd>DiffviewPrevEntry<cr>",
        ["<up>"]       = "<cmd>DiffviewPrevEntry<cr>",
        ["<cr>"]       = "<cmd>DiffviewSelectEntry<cr>",
        ["o"]          = "<cmd>DiffviewSelectEntry<cr>",
        ["R"]          = "<cmd>DiffviewRefresh<cr>",
        ["<tab>"]      = "<cmd>DiffviewToggleFiles<cr>",
        ["s"]          = "<cmd>DiffviewToggleStage<cr>",
        ["S"]          = "<cmd>DiffviewStageAll<cr>",
        ["U"]          = "<cmd>DiffviewUnstageAll<cr>",
        ["X"]          = "<cmd>DiffviewRestoreEntry<cr>",
        ["gf"]         = "<cmd>DiffviewGotoFile<cr>",
        ["<C-w><C-f>"] = "<cmd>DiffviewGotoFile split<cr>",
        ["<C-w>gf"]    = "<cmd>DiffviewGotoFile tab<cr>",
      },
      file_history_panel = {
        ["g!"]         = "<cmd>DiffviewOptions<cr>",
        ["<C-d>"]      = "<cmd>DiffviewOpenCommit<cr>",
        ["zR"]         = "<cmd>DiffviewToggleFoldAll unfold<cr>",
        ["zM"]         = "<cmd>DiffviewToggleFoldAll fold<cr>",
        ["j"]          = "<cmd>DiffviewNextEntry<cr>",
        ["<down>"]     = "<cmd>DiffviewNextEntry<cr>",
        ["k"]          = "<cmd>DiffviewPrevEntry<cr>",
        ["<up>"]       = "<cmd>DiffviewPrevEntry<cr>",
        ["<cr>"]       = "<cmd>DiffviewSelectEntry<cr>",
        ["o"]          = "<cmd>DiffviewSelectEntry<cr>",
        ["<tab>"]      = "<cmd>DiffviewToggleFiles<cr>",
      },
    },
    hooks = {
      diff_buf_read = function(bufnr)
        -- 横並びdiffバッファの設定
        vim.opt_local.wrap = false
        vim.opt_local.list = false
        vim.opt_local.relativenumber = false
      end,
    },
  },
}