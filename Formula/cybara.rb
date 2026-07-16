class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1706"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1706/cybara-v1.0.1706-darwin-arm64-cli"; sha256 "39730c44b2c8d041c24f553b54dbc710e0aa43af805dc71d79ac34c64b77af8a" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1706/cybara-v1.0.1706-darwin-x64-cli"; sha256 "f1212662648850e5e599fbd5693561cf1f2aa1e2b2e9cb10b115526f31cdf1f4" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1706/cybara-v1.0.1706-linux-arm64-cli"; sha256 "beb8329f01bac92936b101d804a33a40856d00ec1b990c780c42f390282de894" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1706/cybara-v1.0.1706-linux-x64-cli"; sha256 "45b4ffa316bbbae328539259edb039692ad26fd6b0dfc7d2df704df7e1d97dbe" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
