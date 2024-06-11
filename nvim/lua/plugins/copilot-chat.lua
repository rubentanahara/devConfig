return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    opts = {
      debug = true, -- Enable debugging
      -- Additional configuration for the best user experience
      use_tabs = true, -- Use tabs for switching between different chats
      auto_scroll = true, -- Automatically scroll to the latest message
      chat_layout = {
        position = "right", -- Position of the chat window (left, right, top, bottom)
        size = 30, -- Size of the chat window
      },
      notifications = true, -- Enable notifications for new messages
    },
    -- keys = {
    --   -- Mapped keys for opening chats faster
    --   { "n", "<Leader>cc", ":CopilotChat<CR>", { noremap = true, silent = true } }, -- Open main chat window
    --   { "n", "<Leader>cn", ":CopilotChatNew<CR>", { noremap = true, silent = true } }, -- Start a new chat
    --   { "n", "<Leader>cl", ":CopilotChatList<CR>", { noremap = true, silent = true } }, -- List all chats
    --   { "n", "<Leader>cq", ":CopilotChatClose<CR>", { noremap = true, silent = true } }, -- Close the current chat
    -- },
    -- See Commands section for default commands if you want to lazy load on them
  },
}
