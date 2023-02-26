require"fidget".setup{}
require"lsp_signature".setup()
require('glance').setup()

-- <F2> esta mappeado
-- require'mason'.setup()
-- require("mason-lspconfig").setup()
local zero = require('lsp-zero')
zero.preset('recommended')
zero.nvim_workspace()
zero.setup()

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local lsp = require'lspconfig'
local navic = require("nvim-navic")
-- local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(client, bufnr)
  client.server_capabilities.document_formatting = false
  navic.attach(client, bufnr)
  --- Guard against servers without the signatureHelper capability
  -- if client.server_capabilities.signatureHelpProvider then
  --   require('lsp-overloads').setup(client, { })
  -- end
end

-- bun add -g intelephense
lsp.intelephense.setup({
  capabilities = capabilities,
  on_attach = on_attach
})

-- pip install python-lsp-server
lsp.pylsp.setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lsp.lua_ls.setup({
  capabilities = capabilities,
  on_attach = on_attach
})

-- bun add -g jsonls
lsp.jsonls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    json = {
      -- Schemas https://www.schemastore.org
      schemas = {
        require('schemastore').json.schemas(),
        {
          description = "TypeScript compiler configuration file",
          fileMatch = {
            ".tsconfig.json",
            ".tsconfig.*.json",
            ".tsconfig*.json",
          },
          url = "https://json.schemastore.org/tsconfig.json",
        },
        {
          description = "Lerna config",
          fileMatch = { "lerna.json" },
          url = "https://json.schemastore.org/lerna.json",
        },
        {
          description = "Babel configuration",
          fileMatch = {
            ".babelrc.json",
            ".babelrc",
            "babel.config.json",
          },
          url = "https://json.schemastore.org/babelrc.json",
        },
        {
          description = "ESLint config",
          fileMatch = {
            ".eslintrc.json",
            ".eslintrc",
          },
          url = "https://json.schemastore.org/eslintrc.json",
        },
        {
          description = "Bucklescript config",
          fileMatch = { "bsconfig.json" },
          url = "https://raw.githubusercontent.com/rescript-lang/rescript-compiler/8.2.0/docs/docson/build-schema.json",
        },
        {
          description = "Prettier config",
          fileMatch = {
            ".prettierrc",
            ".prettierrc.json",
            "prettier.config.json",
          },
          url = "https://json.schemastore.org/prettierrc",
        },
        {
          description = "Vercel Now config",
          fileMatch = { "now.json" },
          url = "https://json.schemastore.org/now",
        },
        {
          description = "Stylelint config",
          fileMatch = {
            ".stylelintrc",
            ".stylelintrc.json",
            "stylelint.config.json",
          },
          url = "https://json.schemastore.org/stylelintrc",
        },
        {
          description = "A JSON schema for the ASP.NET LaunchSettings.json files",
          fileMatch = { "launchsettings.json" },
          url = "https://json.schemastore.org/launchsettings.json",
        },
        {
          description = "Schema for CMake Presets",
          fileMatch = {
            "CMakePresets.json",
            "CMakeUserPresets.json",
          },
          url = "https://raw.githubusercontent.com/Kitware/CMake/master/Help/manual/presets/schema.json",
        },
        {
          description = "Configuration file as an alternative for configuring your repository in the settings page.",
          fileMatch = {
            ".codeclimate.json",
          },
          url = "https://json.schemastore.org/codeclimate.json",
        },
        {
          description = "LLVM compilation database",
          fileMatch = {
            "compile_commands.json",
          },
          url = "https://json.schemastore.org/compile-commands.json",
        },
        {
          description = "Config file for Command Task Runner",
          fileMatch = {
            "commands.json",
          },
          url = "https://json.schemastore.org/commands.json",
        },
        {
          description = "AWS CloudFormation provides a common language for you to describe and provision all the infrastructure resources in your cloud environment.",
          fileMatch = {
            "*.cf.json",
            "cloudformation.json",
          },
          url = "https://raw.githubusercontent.com/awslabs/goformation/v5.2.9/schema/cloudformation.schema.json",
        },
{
          description = "The AWS Serverless Application Model (AWS SAM, previously known as Project Flourish) extends AWS CloudFormation to provide a simplified way of defining the Amazon API Gateway APIs, AWS Lambda functions, and Amazon DynamoDB tables needed by your serverless application.",
          fileMatch = {
            "serverless.template",
            "*.sam.json",
            "sam.json",
          },
          url = "https://raw.githubusercontent.com/awslabs/goformation/v5.2.9/schema/sam.schema.json",
        },
        {
          description = "Json schema for properties json file for a GitHub Workflow template",
          fileMatch = {
            ".github/workflow-templates/**.properties.json",
          },
          url = "https://json.schemastore.org/github-workflow-template-properties.json",
        },
        {
          description = "golangci-lint configuration file",
          fileMatch = {
            ".golangci.toml",
            ".golangci.json",
          },
          url = "https://json.schemastore.org/golangci-lint.json",
        },
        {
          description = "JSON schema for the JSON Feed format",
          fileMatch = {
            "feed.json",
          },
          url = "https://json.schemastore.org/feed.json",
          versions = {
            ["1"] = "https://json.schemastore.org/feed-1.json",
            ["1.1"] = "https://json.schemastore.org/feed.json",
          },
        },
        {
          description = "Packer template JSON configuration",
          fileMatch = {
            "packer.json",
          },
          url = "https://json.schemastore.org/packer.json",
        },
        {
          description = "NPM configuration file",
          fileMatch = {
            "package.json",
          },
          url = "https://json.schemastore.org/package.json",
        },
        {
          description = "JSON schema for Visual Studio component configuration files",
          fileMatch = {
            "*.vsconfig",
          },
          url = "https://json.schemastore.org/vsconfig.json",
        },
        {
          description = "Resume json",
          fileMatch = { "resume.json" },
          url = "https://raw.githubusercontent.com/jsonresume/resume-schema/v1.0.0/schema.json",
        },
      }
    }
  }
})

-- gem install neovim solargraph solargraph-rails
-- Using Rails
-- -> https://github.com/iftheshoefritz/solargraph-rails/
-- solargraph config to create .solargraph.yml and add
-- ********************
-- * plugins:
-- * - solargraph-rails
-- ********************
-- execute yard gems
-- -> https://github.com/castwide/solargraph/issues/87
-- execute solargraph bundle
lsp.solargraph.setup({
  capabilities = capabilities,
  diagnostics = true,
  useBundler = true,
  on_attach = on_attach
})
-- lsp.ruby_ls.setup({
--   cmd = { "bundle", "exec", "ruby-lsp" },
--   capabilities = capabilities,
--   diagnostics = true,
--   useBundler = true,
--   on_attach = on_attach
-- })

-- bun i -g vscode-langservers-extracted
lsp.html.setup({
  capabilities = capabilities,
  diagnostics = true,
  on_attach = on_attach
 })

-- bun add -g emmet-ls
require'lspconfig'.emmet_ls.setup({
  autostart = false
})

-- bun add -g vscode-langservers-extracted
lsp.cssls.setup({
  capabilities = capabilities,
  diagnostics = true,
  on_attach = on_attach
 })

-- bun add -g typescript-language-server
lsp.tsserver.setup({
  capabilities = capabilities,
  on_attach = on_attach
 })

lsp['yamlls'].setup{
        on_attach = on_attach,
        filetypes = { "yaml", "yml" },
        flags = { debounce_test_changes = 150 },
        settings = {
            yaml = {
                format = {
                    enable = true,
                    singleQuote = true,
                    printWidth = 120,
                },
                hover = true,
                completion = true,
                validate = true,
                schemas = {
                    ["https://raw.githubusercontent.com/awslabs/goformation/v6.10.0/schema/cloudformation.schema.json"] = {
                        "/cloudformation.yml",
                        "/cloudformation.yaml",
                        "/*.cf.yml",
                        "/cf.yaml",
                    },
                    ["https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json"] = {
                        "/.gitlab-ci.yml",
                        "/.gitlab-ci.yaml",
                    },
                },
                schemaStore = {
                    enable = true,
                    url = "https://www.schemastore.org/json",
                },
            },
        },
}

-- lsp["null-ls"].setup({})
