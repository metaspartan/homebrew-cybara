class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1591"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1591/cybara-v1.0.1591-darwin-arm64-cli"; sha256 "388536315d25f724f1df9525c5fc6593867590d7802b4d0079efb61de5e2e9aa" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1591/cybara-v1.0.1591-darwin-x64-cli"; sha256 "d97a44f9a79c07793da735761fcd0141423aaf802e76ec303281e3a0c3ee463a" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1591/cybara-v1.0.1591-linux-arm64-cli"; sha256 "9ef9c1ea709904a201d958d6419f4aec7682dba62eb54e21f1a1bb6750730b3d" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1591/cybara-v1.0.1591-linux-x64-cli"; sha256 "669e67b3125d986bd38332ff8c4f697ad91f711e1fdc738d427bdb5345855acb" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
