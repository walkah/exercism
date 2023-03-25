{ pkgs, ... }:

{
  # https://devenv.sh/basics/

  # https://devenv.sh/packages/
  packages = [ pkgs.exercism ];

  # https://devenv.sh/scripts/
  # scripts.hello.exec = "echo hello from $GREET";

  # enterShell = ''
  #   hello
  #   git --version
  # '';

  # https://devenv.sh/languages/
  languages.elixir.enable = true;
  languages.haskell.enable = true;
  languages.python.enable = true;
  languages.ruby.enable = true;
  languages.rust.enable = true;
  languages.swift.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";

  # See full reference at https://devenv.sh/reference/options/
}
