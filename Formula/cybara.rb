class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2573"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2573/cybara-v1.0.2573-darwin-arm64-cli"; sha256 "7c488fbfeaaf3636431e097dbdcd68a7eccc2b9d749241b0ea3e11d362b6b2b1" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2573/cybara-v1.0.2573-darwin-x64-cli"; sha256 "65549718675cdffbf5156b0cb5e1799b009a3bf6c1a276caeeacb7947916f692" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2573/cybara-v1.0.2573-linux-arm64-cli"; sha256 "fafcc34e9c689212927dfa3e73d26e0a65c9079c05e2f6033b5b3252abcdc001" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2573/cybara-v1.0.2573-linux-x64-cli"; sha256 "968b5c5ec281293752c3273fcc1d54f176503ab978d5495764c2ade5eb7dbd4b" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
