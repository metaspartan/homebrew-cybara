class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1640"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1640/cybara-v1.0.1640-darwin-arm64-cli"; sha256 "ced94842f4530d7f5f6ccbc255dc5fe186971d3cd45eac982f153843df81d389" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1640/cybara-v1.0.1640-darwin-x64-cli"; sha256 "fced3d2922c6eaa25d6c26e8ef7d35758c9fa6a6eaa6fd917c282f856518a3d4" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1640/cybara-v1.0.1640-linux-arm64-cli"; sha256 "1e2caba64014ba543bb17469ef6bd053c7bf16cf9728aa9d13724c2cc815215d" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1640/cybara-v1.0.1640-linux-x64-cli"; sha256 "6f570387cf887edd6b97dc47fe65674f6238678dc5d2545f039f73b1b8da7fd3" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
