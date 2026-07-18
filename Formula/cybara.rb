class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1798"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1798/cybara-v1.0.1798-darwin-arm64-cli"; sha256 "45f76b05893e84cfb4988381e9f8ad42add17f34577253c7a39de29094bdb58f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1798/cybara-v1.0.1798-darwin-x64-cli"; sha256 "0c34bf45517b9ac06442a9d9f021e7355278f83fdfefce207d968556318ee64d" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1798/cybara-v1.0.1798-linux-arm64-cli"; sha256 "b7d1bee793dd8d096c4a40205824305c753ff3b2a2b0ebf6c218372b113bcaa1" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1798/cybara-v1.0.1798-linux-x64-cli"; sha256 "deee96b4942df447d051c7d82cc4624600463e7b24320e91f13749458650c0f6" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
