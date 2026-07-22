{
  globals.mapleader = " ";

  keymaps = [
    ### Telescope ###
    {
      action = "<cmd>Telescope find_files<CR>";
      key = "<leader>ff";
    }

    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>ft";
    }

    {
      action = "<cmd>Telescope buffers<CR>";
      key = "<leader>fb";
    }

    {
      action = "<cmd>Telescope help_tags<CR>";
      key = "<leader>fh";
    }

    {
      action = "<cmd>Telescope git_branches<CR>";
      key = "<leader>gb";
    }

    {
      action = "<cmd>Telescope git_commits<CR>";
      key = "<leader>gc";
    }

    {
      action = "<cmd>Telescope git_status<CR>";
      key = "<leader>gs";
    }
  ];
}