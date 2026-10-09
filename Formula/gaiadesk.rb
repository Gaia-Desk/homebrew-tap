# Updated each release by scripts/update-homebrew-formula.mts in the GaiaDesk
# source repo: version, URLs and sha256 values come from the release's
# gaiadesk-cli-<version>-<os>-<arch>.tar.gz.sha256 assets.
class Gaiadesk < Formula
  desc "Run commands, copy files and drive screens on your GaiaDesk computers"
  homepage "https://gaiadesk.net"
  version "0.10.332"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.332/gaiadesk-cli-0.10.332-darwin-arm64.tar.gz"
      sha256 "88abba45f3b7cfadd2faf0d160ab16b421ae3d97aeb6d15e760c0fa41021311d"
    end
    on_intel do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.332/gaiadesk-cli-0.10.332-darwin-x64.tar.gz"
      sha256 "9649b0c7c978ad20658f6b989146bb17417a715271f174eee1c36549b5ed63a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.332/gaiadesk-cli-0.10.332-linux-arm64.tar.gz"
      sha256 "2137d683ac88592eac87a45344dd5fbe367edeb0be031f68abaea97e32007e59"
    end
    on_intel do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.332/gaiadesk-cli-0.10.332-linux-x64.tar.gz"
      sha256 "812286ea2976d9b75a38f09404d77aad198c87ca15152a8870dde7fea3d859c4"
    end
  end

  def install
    bin.install "gaiadesk-cli"
    bin.install_symlink "gaiadesk-cli" => "gaiadesk"
  end

  test do
    assert_match "gaiadesk-cli #{version}", shell_output("#{bin}/gaiadesk-cli --version")
    assert_match "gaiadesk-cli #{version}", shell_output("#{bin}/gaiadesk --version")
  end
end
