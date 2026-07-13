class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1473"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1473/cybara-v1.0.1473-darwin-arm64-cli"; sha256 "ab025040bfae97f19fb5302ea98c1aac4ff362e990bdc388e84eea5b11f97fb9" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1473/cybara-v1.0.1473-darwin-x64-cli"; sha256 "400982a51d4479c372797024f68eaa1c6353f2e951577e37900eb7969f53dc6b" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1473/cybara-v1.0.1473-linux-arm64-cli"; sha256 "28495f66c36c9847970cb6c876aad06f2d530fff4a95c957863ee5888834c04f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1473/cybara-v1.0.1473-linux-x64-cli"; sha256 "3bfc0725d4b09e1385f9b4ae2856c04d64c37d64cf103eafbf5796c70f7934a2" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
