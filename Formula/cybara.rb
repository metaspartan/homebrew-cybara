class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2310"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2310/cybara-v1.0.2310-darwin-arm64-cli"; sha256 "2ff0064ad04d6c1409b8ee6a92f5cbfc75d7d4c0b8c109af285f97c5ea97553f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2310/cybara-v1.0.2310-darwin-x64-cli"; sha256 "a7b5ebc324236096b5c8fe488ada99e58fd7d8f43271b4a20e1de5f1833df47f" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2310/cybara-v1.0.2310-linux-arm64-cli"; sha256 "905563c4b7c19e608877044be3b1cf14648cc0935a66d954f5ce1ba80b81cded" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2310/cybara-v1.0.2310-linux-x64-cli"; sha256 "c8a594beaf01069f0169604fa3e760258e187b00e9b6b499f7b193d605b9e172" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
