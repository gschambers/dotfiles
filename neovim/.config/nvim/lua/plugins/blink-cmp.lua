return {
  "Saghen/blink.cmp",
  version = "*",

  dependencies = {
    "Saghen/blink.compat",
    "fang2hou/blink-copilot",
    {
      "supermaven-inc/supermaven-nvim",
      opts = {
        disable_inline_completion = true,
        disable_keymaps = true,
      },
    },
    "huijiro/blink-cmp-supermaven",
  },

  opts = {
    keymap = {
      preset = "enter",
    },

    sources = {
      default = { "lsp", "path", "buffer", "copilot", "supermaven" },

      providers = {
        copilot = {
          name = "copilot",
          module = "blink-copilot",
          score_offset = 100,
          async = true,
          transform_items = function(ctx, items)
            for _, item in ipairs(items) do
              item.kind = "AI"
              item.kind_icon = ""
            end
            return items
          end
        },

        supermaven = {
          name = 'supermaven',
          module = "blink-cmp-supermaven",
          score_offset = 90,
          async = true,
          transform_items = function(ctx, items)
            for _, item in ipairs(items) do
              item.kind = "AI"
              item.kind_icon = "󰫢"
            end
            return items
          end
        }
      },
    },

    appearance = {
      nerd_font_variant = "normal",
    },

    completion = {
      documentation = {
        auto_show = true,
      },

      ghost_text = {
        enabled = true,
      },

      menu = {
        draw = {
          columns = {
            { "kind_icon" },
            { "label",    "label_description", gap = 1 }
          },
        },
      },
    },
  },
}
