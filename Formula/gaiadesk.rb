# Updated each release by scripts/update-homebrew-formula.mts in the GaiaDesk
# source repo: version, URLs and sha256 values come from the release's
# gaiadesk-cli-<version>-<os>-<arch>.tar.gz.sha256 assets.
class Gaiadesk < Formula
  desc "Run commands, copy files and drive screens on your GaiaDesk computers"
  homepage "https://gaiadesk.net"
  version "0.10.331"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.331/gaiadesk-cli-0.10.331-darwin-arm64.tar.gz"
      sha256 "429dcb157d0bb2c18276ab090db5487e1b53e37c8b8a155a5505b00544610322"
    end
    on_intel do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.331/gaiadesk-cli-0.10.331-darwin-x64.tar.gz"
      sha256 "669d06d769a3c1965c9bfb33e358a1d3a80a80160124944091559e54dd6f4e65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.331/gaiadesk-cli-0.10.331-linux-arm64.tar.gz"
      sha256 "81dea3732da2451dc526fcad52b94af1a3f1eea1cea66a877fe414d6fcd785f5"
    end
    on_intel do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.331/gaiadesk-cli-0.10.331-linux-x64.tar.gz"
      sha256 "cda75b44a59ea3d414e2d25a2cad0054dc59666409f392ddb0fc404152952412"
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
