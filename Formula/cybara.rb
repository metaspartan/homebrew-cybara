class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2410"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2410/cybara-v1.0.2410-darwin-arm64-cli"; sha256 "f8f074c00fdd4555bce6271238f9e4a6bee1fb1b375c0c91f3e074756b518e41" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2410/cybara-v1.0.2410-darwin-x64-cli"; sha256 "f632df9fa87362465084f6815b5518f182ffdef0255ba1d39c90e36b88fbc985" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2410/cybara-v1.0.2410-linux-arm64-cli"; sha256 "040831def674e1df55e6342149bad0b498583f85c0fa8024a1ef2132113ad73c" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2410/cybara-v1.0.2410-linux-x64-cli"; sha256 "283d2491725c7ebce12335062d7475cbacede99fa4dbf4a35722ce2ecbca2a31" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
