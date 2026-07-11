class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1317"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1317/cybara-v1.0.1317-darwin-arm64-cli"; sha256 "1263554390d1bbf6712bb26bcf907ce184f2d783212140a1bc5abbc19e51147a" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1317/cybara-v1.0.1317-darwin-x64-cli"; sha256 "4e88c17a8f178163bf0725bb1a36db4a869dc42833da7b8eeb0aba8716e81aa1" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1317/cybara-v1.0.1317-linux-arm64-cli"; sha256 "f267a0d6fa02fbc5b72df343eb360c1f29e1eecfc7c2a63a50f3eb3570e3a776" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1317/cybara-v1.0.1317-linux-x64-cli"; sha256 "b3fe773f2266bd68be5670012e8b84c1f77822e444566812726b8a5c924c38fa" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
