require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "jdtls", "svelte" }
vim.lsp.enable(servers)

vim.lsp.config("ts_ls", {
  init_options = {
    preferences = {
      disableSuggestions = true,
    },
  },
})

vim.lsp.config("jdtls", {
  cmd = { "jdtls" },
  root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" },
  settings = {
    java = {
      signatureHelp = { enabled = true },
      completion = {
        favoriteStaticMembers = {
          "org.junit.Assert.*",
          "org.junit.Assume.*",
          "org.junit.jupiter.api.Assertions.*",
          "org.mockito.Mockito.*",
        },
      },
      sources = {
        organizeImports = {
          starThreshold = 9999,
          staticStarThreshold = 9999,
        },
      },
    },
  },
})
