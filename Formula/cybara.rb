class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1845"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1845/cybara-v1.0.1845-darwin-arm64-cli"; sha256 "a123e8d5e90b968b454cccf0b3ac6d3617f2e9b228286934fe0e643aaabfeb17" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1845/cybara-v1.0.1845-darwin-x64-cli"; sha256 "3c8c78fc14d9588dfb9656c93cfbac4cf13c8d0b729fc03a5b5bb1b8ae6e1c84" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1845/cybara-v1.0.1845-linux-arm64-cli"; sha256 "7963d24ea9c011520165da01af45aa6d08b72e323533d574086212284e19cb8e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1845/cybara-v1.0.1845-linux-x64-cli"; sha256 "e3aeccf4c8f4f3b538f3b7ee5c7b7a67a2376e8094fc6d700b36d18da8d2fd7d" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
