class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2275"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2275/cybara-v1.0.2275-darwin-arm64-cli"; sha256 "62b1891a3ef3c13c53c9374aadf3802ca93c1cc24f7aebe55eb7b4bc78ac4630" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2275/cybara-v1.0.2275-darwin-x64-cli"; sha256 "ca86ee2ec17be2ea18c4538c1024096aa26b3755b1315f390b4f12182ccd1b2a" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2275/cybara-v1.0.2275-linux-arm64-cli"; sha256 "013ff248797ee43d8b54e1891e22353475098cf98da860edb1ca98e06f96ee8e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2275/cybara-v1.0.2275-linux-x64-cli"; sha256 "dbadeceae875894234dc5e31198ef06b0a2bae015d387a243231e307d081d451" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
