class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1457"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1457/cybara-v1.0.1457-darwin-arm64-cli"; sha256 "16c6e4d8251874accc02b2dfc2bfffda08818726e92cc7d20c45210137c585eb" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1457/cybara-v1.0.1457-darwin-x64-cli"; sha256 "9761bd567c5b3b6ffe235e48487135e70b5154868b8116f5dd9d68fb229aeba0" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1457/cybara-v1.0.1457-linux-arm64-cli"; sha256 "93698f3fa92d774a1f3df9303ef6f56538e8485970d6de943f5d4575d40e9d8d" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1457/cybara-v1.0.1457-linux-x64-cli"; sha256 "f61b2a411e4a73e3692a56cebe2ee87874417a353cf4d2c5eec0d182cfddb34e" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
