{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "gitcredits";
  version = "0.1.1";

  src = fetchFromGitHub {
    owner = "Higangssh";
    repo = "gitcredits";
    rev = "v${version}";
    hash = "sha256-AG6vxFTvHt0iDUy8QrMaOfsEKuXJEqBHSBDhH2XItGg=";
  };

  vendorHash = "sha256-l6AWvML9+qYi7bJeOZ5l7d2yjJwJ8VRbVK6g60kzmnY=";

  ldflags = [
    "-s"
    "-w"
    "-X main.version=${version}"
  ];

  meta = with lib; {
    description = "Turn your Git contributors into movie stars with a cinematic credits sequence";
    homepage = "https://github.com/Higangssh/gitcredits";
    license = licenses.mit;
    maintainers = [ ];
    platforms = platforms.unix;
  };
}
