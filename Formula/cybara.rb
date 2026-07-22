class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1861"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1861/cybara-v1.0.1861-darwin-arm64-cli"; sha256 "1560ee6948bd692b6e0d6f392358d620a0eaa670a5f1dc3d0c584491785eb7f9" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1861/cybara-v1.0.1861-darwin-x64-cli"; sha256 "137e995a1b07a4017dbf919159b72df31e9937c7ae46ab6e3eeef02ab5e82aba" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1861/cybara-v1.0.1861-linux-arm64-cli"; sha256 "7ed9cb02333f8692d23a60403311f14fa345a4bc0a5b334aabc215d65fda5b98" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1861/cybara-v1.0.1861-linux-x64-cli"; sha256 "f4af2618500fe128beef22fd3c5216dc282be0c6f171f98a7cec1ebc1d5e472a" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
