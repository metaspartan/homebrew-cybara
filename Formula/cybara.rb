class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1339"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1339/cybara-v1.0.1339-darwin-arm64-cli"; sha256 "733afc0005f0d2c43086b1fd5431c0de7e1dcefa41c4cff54c407c9e9f1f412d" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1339/cybara-v1.0.1339-darwin-x64-cli"; sha256 "bdbd1d1f3d80a598b25f2400b622753b00986dee89ebcafb6688102e5956e26d" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1339/cybara-v1.0.1339-linux-arm64-cli"; sha256 "4207bb046d14775eb4e17ff47c85c365344be1c882b6c000f4171680228e0c46" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1339/cybara-v1.0.1339-linux-x64-cli"; sha256 "42a5778e400ca8a8e61fc31f03c08278e08cdeef28b8580b550e0cc3d7a97bb0" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
