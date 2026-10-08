# Updated each release by scripts/update-homebrew-formula.mts in the GaiaDesk
# source repo: version, URLs and sha256 values come from the release's
# gaiadesk-cli-<version>-<os>-<arch>.tar.gz.sha256 assets.
class Gaiadesk < Formula
  desc "Run commands, copy files and drive screens on your GaiaDesk computers"
  homepage "https://gaiadesk.net"
  version "0.10.328"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.328/gaiadesk-cli-0.10.328-darwin-arm64.tar.gz"
      sha256 "72809fb17a5d590947aba538b1264894c2634ae43dc38e051e1f83129a1ef07d"
    end
    on_intel do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.328/gaiadesk-cli-0.10.328-darwin-x64.tar.gz"
      sha256 "b3420817f9e523b1809a66b6df0391dc01f0cbfab67a486958f5e6e3d2646537"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.328/gaiadesk-cli-0.10.328-linux-arm64.tar.gz"
      sha256 "a651ae2938651e885b88bc95ec554ffde883244b6002f3235c619c9303120bbd"
    end
    on_intel do
      url "https://github.com/Gaia-Desk/gaiadesk-releases/releases/download/v0.10.328/gaiadesk-cli-0.10.328-linux-x64.tar.gz"
      sha256 "bfafd33ed63c5af8dea434379ba8b34226ffdd5b48428513760c7d64f8881301"
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
