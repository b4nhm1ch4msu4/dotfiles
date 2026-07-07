return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      robotframework_ls = {
        settings = {
          robot = {
            pythonpath = {
              "C:\\workspace\\bmw_icon_resource\\resource",
              "C:\\workspace\\bmw_icon_script\\Plugin",
              -- "C:\\workspace\\bmw_icon_script\\Plugin\\EnvPlugin\\dlt",
              -- "C:\\workspace\\bmw_icon_script\\Plugin\\EnvPlugin\\SP25Bench",
              -- "C:\\workspace\\bmw_icon_script\\Plugin\\EnvPlugin\\PCAP",
              -- "C:\\workspace\\bmw_icon_script\\Plugin\\EnvPlugin\\oecon",
              -- "C:\\workspace\\bmw_icon_script\\Plugin\\EnvPlugin\\canat",
              -- "C:\\workspace\\bmw_icon_script\\Plugin\\EnvPlugin\\PCAN",
              -- "C:\\workspace\\bmw_icon_script\\Plugin\\EnvPlugin\\Util",
            },
          },
        },
      },
    },
  },
}
