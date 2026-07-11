class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1299"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1299/cybara-v1.0.1299-darwin-arm64-cli"; sha256 "b6e456f8223cc5176f37f7916b909aed362c110aa6ee4a6b2271c7f91e31f38c" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1299/cybara-v1.0.1299-darwin-x64-cli"; sha256 "7c74839ae00a09afd269744a1c63809eccdccfc3067d1e39f2450f49c6afc25a" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1299/cybara-v1.0.1299-linux-arm64-cli"; sha256 "3cee7a162460911c27b52d7fc11d4618a45622cfdd20fa5d4542ba3beb1ff8b8" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1299/cybara-v1.0.1299-linux-x64-cli"; sha256 "b9461fc01781255d6bf7b9022544c7f45318aa161e0ed49559ff1a3826b027c2" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
