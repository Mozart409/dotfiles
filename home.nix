{ pkgs, ... }: {
  programs.home-manager.enable = true;

  home.packages = [
  	pkgs.fish,
	pkgs.tmux,
	pkgs.neovim,
	pkgs.git,
	pkgs.ripgrep,
	pkgs.fd,
	pkgs.fzf,
	pkgs.wget,
	pkgs.gpg,
	pkgs.curl,
	pkgs.unzip,
	pkgs.sed,
	pkgs.jq,
  ];

  programs.git = {
    enable = true;
  };
}
