local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = {
  [[                ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,                 ]],
  [[                ╬╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫Ñ                ]],
  [[               ╬╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫H               ]],
  [[              ╔╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫               ]],
  [[             ╔╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫Ñ              ]],
  [[            ╔╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╬             ]],
  [[           ╔╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╬            ]],
  [[          é╫╫╫ÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑ╬╫╫╫╦          ]],
  [[        ,╬╫╫╫Ω                                   ╟╫╫╫N         ]],
  [[       ╔╫╫╫╫╫╫╕                                 é╫╫╫╫╫╬,       ]],
  [[     ╓╬╫╫╫╫╫╫╫╫N                               ╬╫╫╫╫╫╫╫╫N      ]],
  [[   ,╬╫╫╫╫╫╫╫╫╫╫╫N                            ,╣╫╫╫╫╫╫╫╫╫╫╫╦    ]],
  [[ ,╬╫╫╫╫╫╫╫╫╫╫╫╫╫╫╬                          ╔╫╫╫╫╫╫╫╫╫╫╫╫╫╫Ñ╗  ]],
  [[ ╙╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫m                       4╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╣` ]],
  [[  `╣╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫N                     ╬╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫M   ]],
  [[    ╬╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫N                  ,╣╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫M    ]],
  [[     ╚╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╬                ╔╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫^     ]],
  [[      ╙╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫m             é╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╣       ]],
  [[       `╣╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫N           ╬╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫M        ]],
  [[         ╣╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫N        ,╬╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫M         ]],
  [[          ╟╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╬      ╔╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫"          ]],
  [[           ╙╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫m   ╔╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫`           ]],
  [[            "╣╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫N╗╬╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫Å             ]],
  [[              ╬╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫╫M              ]],
  [[               ╟╫Ñ╝╩╜^"``            ```"╙╙╩╝╣╫┘               ]],
}
dashboard.section.buttons.val = {
  dashboard.button("O", "🚀 " .. " orders", ":PossessionLoad orders<cr>"),
  dashboard.button("F", "🏢 " .. " facility activity", ":PossessionLoad fas<cr>"),
  dashboard.button("I", "🧾 " .. " inventory", ":PossessionLoad inventory<cr>"),
  dashboard.button("T", "👥 " .. " trade partnerships", ":PossessionLoad trade_partnerships<cr>"),
  dashboard.button("P", "📘 " .. " product catalog", ":PossessionLoad product_catalog<cr>"),
  dashboard.button("D", "🥞 " .. " devstack 5000", ":PossessionLoad stord<cr>"),
  dashboard.button("s", "🔖 " .. " Load session", ":Telescope possession list theme=dropdown previewer=false<cr>"),
  dashboard.button("p", "📂 " .. " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
  dashboard.button("f", "🗄️ " .. " Find file", ":Telescope find_files theme=dropdown previewer=false<cr>"),
  dashboard.button("e", "🗃️ " .. " New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("t", "🔍 " .. " Find text", ":Telescope live_grep theme=dropdown previewer=false<CR>"),
  dashboard.button("r", "⏰️ " .. " Recent files", ":Telescope oldfiles theme=dropdown previewer=false<CR>"),
  dashboard.button("c", "🧰 ️" .. " Config", ":e ~/.config/nvim/init.lua <CR>"),
  dashboard.button("q", "💀 " .. " Quit", ":qa<CR>"),
}

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Function"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true

vim.cmd [[autocmd User AlphaReady hi Cursor blend=100 | autocmd BufUnload <buffer> hi Cursor blend=0]]
alpha.setup(dashboard.opts)
