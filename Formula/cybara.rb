class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1564"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1564/cybara-v1.0.1564-darwin-arm64-cli"; sha256 "de43240a7a02d5984b7b60ca2219f950ce827a8278380535284de3e2cbde87f0" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1564/cybara-v1.0.1564-darwin-x64-cli"; sha256 "7d6f28ec8de0aef070b7da2902a71cad781bc4fc158588206a7504a21848404d" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1564/cybara-v1.0.1564-linux-arm64-cli"; sha256 "b37ce574e1ebb13778b901aaca1bf916dcc7ae3c2b0e0d4cb4af0020aede9af3" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1564/cybara-v1.0.1564-linux-x64-cli"; sha256 "5e24d89144f05db2275cac1a38701ac8b751d869712178e5ac84c538c5e4e00b" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
