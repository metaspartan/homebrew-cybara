class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1410"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1410/cybara-v1.0.1410-darwin-arm64-cli"; sha256 "076e428a4979aa0973f22bd96e068235da123942d9fbdf54fc4eec9b2911131c" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1410/cybara-v1.0.1410-darwin-x64-cli"; sha256 "5aed799a665883558ab20296f0af8b2c100bdb3a57bd728626beb6830fb69186" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1410/cybara-v1.0.1410-linux-arm64-cli"; sha256 "2f617d425954176cd38b2adaa11cad16eaa5384d69c1e1250558f071140791fd" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1410/cybara-v1.0.1410-linux-x64-cli"; sha256 "5a917aa632e636d74cfe8992a15dda5b6547fdb26ab7aa8ba1f8f22c23abf78b" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
