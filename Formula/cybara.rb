class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2104"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2104/cybara-v1.0.2104-darwin-arm64-cli"; sha256 "5ea212b9d0187e64e4aefff727bb15afe78d46a46de0e1c776ecd79b13e11054" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2104/cybara-v1.0.2104-darwin-x64-cli"; sha256 "8b19ab0eea7e17dc283e9c14251d9c0acc73275eb842a3b7b5db86d41ddb585a" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2104/cybara-v1.0.2104-linux-arm64-cli"; sha256 "9b9d2296fbb2f0fd2cd76a29934ab3ed18682779c00c31eb61fa3a01cd3fdf70" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2104/cybara-v1.0.2104-linux-x64-cli"; sha256 "c5834dbf13774f2aa06102e6a83d2c75230444035c5598542652706882082765" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
