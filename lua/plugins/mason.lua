return {
  -- Wir erweitern die Konfiguration von mason.nvim
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "astro-language-server",
        "bash-language-server",
	"beautysh",
        "codebook",
        "css-lsp",
        "docker-language-server",
        "marksman",
        "python-lsp-server",
        "shellcheck",
        "shfmt",
        "stylua",
        "systemd-lsp",
        "yaml-language-server",
      },
    },
  },
}
