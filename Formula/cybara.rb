class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1281"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1281/cybara-v1.0.1281-darwin-arm64-cli"; sha256 "e74dbb877330314d5c910246d6cb9b453886838719833f00ca0b44466130cb4f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1281/cybara-v1.0.1281-darwin-x64-cli"; sha256 "28955f191e0fc3c30252b906713876d514b15f7ac190f9d21103b5acd99fad1b" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1281/cybara-v1.0.1281-linux-arm64-cli"; sha256 "5e8e62fcd871ad07b6a02cd14e07d7858c389e3eb1199517081ea15f198a737f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1281/cybara-v1.0.1281-linux-x64-cli"; sha256 "1b846582d3152a09baa3215aef7d6342fb3e2a3c97acc7e610220ca6affc89d4" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
