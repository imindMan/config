{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  pname = "sddm-sugar-candy-theme";
  version = "1.1";
  dontBuild = true;
  installPhase = ''
    mkdir -p $out/share/sddm/themes
    cp -aR $src $out/share/sddm/themes/sugar-candy
  '';
  src = fetchFromGitHub {
    owner = "imindMan";
    repo = "sddm-sugar-candy";
    rev = "v${version}";
    sha256 = "0bj8a0q0fiy5mkqks1wyvam57nip6kl11yi8p64l4yp52iiff0gw";
  };
}
