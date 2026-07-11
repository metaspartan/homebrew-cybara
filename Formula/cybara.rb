class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1310"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1310/cybara-v1.0.1310-darwin-arm64-cli"; sha256 "c41c25d19068e8465c3e81176f42af232ac22953ee4281ad81c23d67090e3ed3" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1310/cybara-v1.0.1310-darwin-x64-cli"; sha256 "d11b0c80fc54a025d3aa3caa5cae80eedc9a6c61dc4191aeca5499304afbc520" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1310/cybara-v1.0.1310-linux-arm64-cli"; sha256 "85385dab633841c61252b1d6d612686eb6b3e60b2043374e6349e4389d27e6e0" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1310/cybara-v1.0.1310-linux-x64-cli"; sha256 "a878e6c8206638545d6cc8a5743b49cec68b6199e6093e7613cc61435c8be20e" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
