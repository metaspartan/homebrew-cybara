class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1756"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1756/cybara-v1.0.1756-darwin-arm64-cli"; sha256 "bc01572b2dfe76bdad0d7496d23a3349db5667eec1ba6738702e827f87bd5a4a" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1756/cybara-v1.0.1756-darwin-x64-cli"; sha256 "63fad77cd9d29e8ba67acaab890873dcbfe61d65996c7a48f6841001d3cc3af0" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1756/cybara-v1.0.1756-linux-arm64-cli"; sha256 "4555af09e11b34f8f4c277ad391af99c8c2aff6dcf56f816ca7399498d1fc187" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1756/cybara-v1.0.1756-linux-x64-cli"; sha256 "4138ab2dcb1f31cd743950dc967efcd396fb08dbabc9965928794b045175983e" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
