class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2529"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2529/cybara-v1.0.2529-darwin-arm64-cli"; sha256 "667cae743637ea5d3ddef91f96458e8b400795a0f3441319d6322e62499437f6" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2529/cybara-v1.0.2529-darwin-x64-cli"; sha256 "3dcc8429f4e2559b922fbd2cfe43fb7ea2104e5ef8d14c87a908e169c11e9499" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2529/cybara-v1.0.2529-linux-arm64-cli"; sha256 "653b5d669c6cb1911387f28a52dbb899f9df6f3314c2572aaa7c7fc76364be85" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2529/cybara-v1.0.2529-linux-x64-cli"; sha256 "810d6cb0ac4f0e22af7ce825e688f1cf9b867bdae93c220c1e36bca4e6a354f2" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
