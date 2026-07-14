class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1500"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1500/cybara-v1.0.1500-darwin-arm64-cli"; sha256 "3e9746aa07d1df5a5d224eb96b5a8fcab7470eb77ec5196058abec7a64917285" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1500/cybara-v1.0.1500-darwin-x64-cli"; sha256 "66c8f5a402e106e16da6af670d4327be77ec45f94d65fa30454546cd94c3c00f" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1500/cybara-v1.0.1500-linux-arm64-cli"; sha256 "2af5f82a7f380cad1c00eea34e84eecb15f231c2c4d9047adcbbfdc329246179" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1500/cybara-v1.0.1500-linux-x64-cli"; sha256 "fad956bbc394569b767a06cb269235c9119448d1961ea09ed3f7bb4604ddf577" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
