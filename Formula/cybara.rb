class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1647"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1647/cybara-v1.0.1647-darwin-arm64-cli"; sha256 "bc85ca2128735519596f948fcdf7c8e5986c9c3b001b62d168c5854a2368d204" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1647/cybara-v1.0.1647-darwin-x64-cli"; sha256 "e4f99210ba327a070830a7e8624f7e9a8a46250a692f0f4622ae0e6f82e8302a" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1647/cybara-v1.0.1647-linux-arm64-cli"; sha256 "89dcdcab89a0d8d8659a2f273d832f33e725a7b387a24dde03982b2385efabb3" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1647/cybara-v1.0.1647-linux-x64-cli"; sha256 "6d5e94b183cac203bfd2c29f79620cf048bb59b41f1b60315b1dbaf76834cf12" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
