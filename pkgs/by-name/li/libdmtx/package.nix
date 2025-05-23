{
  lib,
  stdenv,
  fetchFromGitHub,
  autoreconfHook,
  pkg-config,
}:

stdenv.mkDerivation rec {
  pname = "libdmtx";
  version = "0.7.8";

  src = fetchFromGitHub {
    owner = "dmtx";
    repo = "libdmtx";
    rev = "v${version}";
    sha256 = "sha256-/sV+t7RAr5dTwfUsGz0KEZYgm0DzQWRdiwrbbEbC1OY=";
  };

  nativeBuildInputs = [
    autoreconfHook
    pkg-config
  ];

  meta = {
    description = "Open source software for reading and writing Data Matrix barcodes";
    homepage = "https://github.com/dmtx/libdmtx";
    changelog = "https://github.com/dmtx/libdmtx/blob/v${version}/ChangeLog";
    platforms = lib.platforms.all;
    maintainers = [ ];
    license = lib.licenses.bsd2;
  };
}
