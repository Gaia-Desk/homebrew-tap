# Updated each release by scripts/update-homebrew-formula.mts in the GaiaDesk
# source repo: version, URLs and sha256 values come from the release's
# gaiadesk-cli-<version>-<os>-<arch>.tar.gz.sha256 assets.
class Gaiadesk < Formula
  desc "Run commands, copy files and drive screens on your GaiaDesk computers"
  homepage "https://gaiadesk.net"
  version "0.10.329"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.329/gaiadesk-cli-0.10.329-darwin-arm64.tar.gz"
      sha256 "0b9ced0d23109023f1ceb5e419ee5da59ba45b0e105bd23aac0593199e230678"
    end
    on_intel do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.329/gaiadesk-cli-0.10.329-darwin-x64.tar.gz"
      sha256 "f1d853e6e9c2d99d15709429e9ff202d2f75b683e175e2cd1619fc2788173dea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.329/gaiadesk-cli-0.10.329-linux-arm64.tar.gz"
      sha256 "4d2402fa90d264edad180387c6b885ef5ef1f42647caf5129beda6e8b2f426b0"
    end
    on_intel do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.329/gaiadesk-cli-0.10.329-linux-x64.tar.gz"
      sha256 "6cca674ba18f2cc9c6296cf8193e4dbda567792a84e3717730f0e87cd8f18be3"
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
