return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    opts = {
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      },
      settings = {
        save_on_toggle = true,
      },
    },
    keys = function()
      local keys = {
        {
          "<leader>H",
          function()
            require("harpoon"):list():add()
          end,
          desc = "Harpoon File",
        },
        {
          "<leader>h",
          function()
            local harpoon = require("harpoon")
            harpoon.ui:toggle_quick_menu(harpoon:list())
          end,
          desc = "Harpoon Quick Menu",
        },
      }

      for i = 1, 5 do
        table.insert(keys, {
          "<leader>" .. i,
          function()
            require("harpoon"):list():select(i)
          end,
          desc = "Harpoon to File " .. i,
        })
      end
      return keys
    end,
    -- config = function(_, opts)
    --   local harpoon = require("harpoon")
    --   harpoon:setup(opts)
    --
    --   -- Auto-add files when opened
    --   vim.api.nvim_create_autocmd("BufReadPost", {
    --     callback = function(args)
    --       local buf = args.buf
    --       local name = vim.api.nvim_buf_get_name(buf)
    --       if name ~= "" then
    --         harpoon:list():add()
    --       end
    --     end,
    --   })
    -- end,
  },
}
