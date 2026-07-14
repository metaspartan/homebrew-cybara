class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1504"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1504/cybara-v1.0.1504-darwin-arm64-cli"; sha256 "6492dde2a49405817609248aa0ac41f3c27a57e70d2ed7c6e51fe9797525e71e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1504/cybara-v1.0.1504-darwin-x64-cli"; sha256 "13119fcef489cbef197a0d59394bae8748c5255bd86ff0084f64a31e3d327ac9" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1504/cybara-v1.0.1504-linux-arm64-cli"; sha256 "bf6065d187039bb3b3ba5a405accd63c42b82e0498c26793402c976e51741d30" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1504/cybara-v1.0.1504-linux-x64-cli"; sha256 "6914c84a1a150c33a50c41108e643b68c28e525b3bf22fae9d7005b7a85c8393" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
