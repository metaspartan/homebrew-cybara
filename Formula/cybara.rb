class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1446"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1446/cybara-v1.0.1446-darwin-arm64-cli"; sha256 "882496c5711de0416f268ff4d953ff6f21a65d8ef2721ff506dc1cc66dee2c1f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1446/cybara-v1.0.1446-darwin-x64-cli"; sha256 "3ca3624edd594eba6c3d42f7b38f33b56defede3699922c52d241587e7fba295" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1446/cybara-v1.0.1446-linux-arm64-cli"; sha256 "8448de805d2d26cc566fdf8e9821f8a0393c39d134f2767f60cf3cd37636da87" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1446/cybara-v1.0.1446-linux-x64-cli"; sha256 "8bd231b3df1a16b269d278b5e198ae4cf959ed51d41341d2d438a49c5cae53f2" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
