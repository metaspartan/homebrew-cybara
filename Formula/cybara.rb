class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2112"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2112/cybara-v1.0.2112-darwin-arm64-cli"; sha256 "c8fa18d84be618e0faf76cb2609ca9e7f396b7fd27c488acc55b2f00663218e8" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2112/cybara-v1.0.2112-darwin-x64-cli"; sha256 "322db737deb113a4ebb82053ffd3f83a91d0b8e3ebbd89d819dd927f4bf82269" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2112/cybara-v1.0.2112-linux-arm64-cli"; sha256 "907dea8bcd21c06131cd219127952d04450977834d045f95ffbcb591e1768fac" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2112/cybara-v1.0.2112-linux-x64-cli"; sha256 "042b1e28227fc9a8f95464210ce304a8a4fea54957d78da9cfc3b5887d8a9c63" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
