class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1267"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1267/cybara-v1.0.1267-darwin-arm64-cli"; sha256 "d9dbbf509a26fec954ed1b3ef069278167760f4b24c61b82f809f9522e86ca6d" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1267/cybara-v1.0.1267-darwin-x64-cli"; sha256 "21a9352153cd94c78e56d16ae177775150fc0442ebcb2dd84ae20cd628d935d6" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1267/cybara-v1.0.1267-linux-arm64-cli"; sha256 "ed1dcc3c421365db3f2df72c991e1a83beeeb5dd1753cb3e1cf5d1c9b91ee24d" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1267/cybara-v1.0.1267-linux-x64-cli"; sha256 "7de4e70bb19ef4fa2628ab402766fd60314147baebf371bb516710fba49f9341" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
