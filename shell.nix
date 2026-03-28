{ pkgs ? import <nixpkgs>{}}:

let
  perll = with pkgs; [
    perl
    perlnavigator
  ];

  perl_modules = with pkgs.perl5Packages; [
    Gtk3
    TermAnimation
    TermProgressBar
    TermUI
    CursesUI
    PathClass
    TimeMoment
  ];

in
pkgs.mkShell {
  nativeBuildInputs = perll ++ perl_modules;
}
