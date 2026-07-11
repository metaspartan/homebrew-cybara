class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1355"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1355/cybara-v1.0.1355-darwin-arm64-cli"; sha256 "21641442402529577ccd9f49980f3d1238e4e56cee27f3cb63ebc4bb3662502e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1355/cybara-v1.0.1355-darwin-x64-cli"; sha256 "917dfc240f376c6cfbb31841ebb4a52d2dc7d81f04dac57959f9651b1395f3f6" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1355/cybara-v1.0.1355-linux-arm64-cli"; sha256 "72eba60d138b5a83c0f47e2bcac4bce4eacc8f936f118b40896e9a5521b48397" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1355/cybara-v1.0.1355-linux-x64-cli"; sha256 "9f02b5cbbc537eca4ea40a91a0c1889e7025bcb3d7a556c3d0a843c4c93b16e1" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
