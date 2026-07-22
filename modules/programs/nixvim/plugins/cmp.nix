{
  plugins.cmp = {
    enable = true;

    settings = {
      
      mapping = {
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-e>" = "cmp.mapping.abort()";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<Tab>" = "cmp.mapping.select_next_item()";
        "<S-Tab>" = "cmp.mapping.select_prev_item()";
      };

        # Источники подсказок (порядок определяет приоритет)
      sources = [
        { name = "nvim_lsp"; }
        { name = "path"; }
        { name = "buffer"; }
      ];
    };
  };
}