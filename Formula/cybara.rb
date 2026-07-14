class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1528"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1528/cybara-v1.0.1528-darwin-arm64-cli"; sha256 "b46e9fc5fac4a29cfef5b99619a813bac5870fb14db2dc6e3b61a72108b2031c" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1528/cybara-v1.0.1528-darwin-x64-cli"; sha256 "dca494427a058af0d3e279617d158e4901755509d4d3529fba71f2dd5342fea2" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1528/cybara-v1.0.1528-linux-arm64-cli"; sha256 "6eb48ab0f7a6acce9c52ac0c95bca5d21a3ac6bd1542d097b5ef883237cc9b63" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1528/cybara-v1.0.1528-linux-x64-cli"; sha256 "b2de3238dc61150aff92fde8e5446057aac654d964daaa2eeac393376a1f1eb5" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
