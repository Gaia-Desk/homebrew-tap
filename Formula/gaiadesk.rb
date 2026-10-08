# Updated each release by scripts/update-homebrew-formula.mts in the GaiaDesk
# source repo: version, URLs and sha256 values come from the release's
# gaiadesk-cli-<version>-<os>-<arch>.tar.gz.sha256 assets.
class Gaiadesk < Formula
  desc "Run commands, copy files and drive screens on your GaiaDesk computers"
  homepage "https://gaiadesk.net"
  version "0.10.330"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.330/gaiadesk-cli-0.10.330-darwin-arm64.tar.gz"
      sha256 "fd5607b08e93fd61447aebaccca77c6461d3d3b21a5889a2400ec1f0eb91bb5d"
    end
    on_intel do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.330/gaiadesk-cli-0.10.330-darwin-x64.tar.gz"
      sha256 "89041b9274c786456dbdc11288c0a6a21bb5d91da8de0176c8f1bd73561dfbbe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.330/gaiadesk-cli-0.10.330-linux-arm64.tar.gz"
      sha256 "b1d6177ed243870b6483b817308500a9c79dcd231a71a9df31d3b50be9bc7b3e"
    end
    on_intel do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.330/gaiadesk-cli-0.10.330-linux-x64.tar.gz"
      sha256 "df24b12b2fc943f9a268c21a7f17e4c43550142e0eeb094695eb3b1c9b47cc79"
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
