{
  globals.mapleader = " ";

  keymaps = [
    ### Telescope ###
    {
      action = "<cmd>Telescope find_files<CR>";
      key = "<leader>ff"; # Поиск файла по имени
    }

    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>ft"; # Поиск по содержимому в файлах
    }

    {
      action = "<cmd>Telescope buffers<CR>";
      key = "<leader>fb"; # Поиск по буферам
    }

    {
      action = "<cmd>Telescope help_tags<CR>";
      key = "<leader>fh"; # Поиск по help
    }

    {
      action = "<cmd>Telescope git_branches<CR>";
      key = "<leader>gb"; # Ветки 
    }

    {
      action = "<cmd>Telescope git_commits<CR>";
      key = "<leader>gc"; # Коммиты
    }

    {
      action = "<cmd>Telescope git_status<CR>";
      key = "<leader>gs"; # Статус
    }


    
  ];
}