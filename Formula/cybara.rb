class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1258"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1258/cybara-v1.0.1258-darwin-arm64-cli"; sha256 "a532ef9b24e4500a33b01895e1e9f2e2cc9221db70b7b94aaf119b22f04f0400" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1258/cybara-v1.0.1258-darwin-x64-cli"; sha256 "1252daa6e86a47f37e07b2f468689cd640118e1827d490260dd98b6653def8fd" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1258/cybara-v1.0.1258-linux-arm64-cli"; sha256 "d279739d8c2780af72476483983d3ec719e4329e0f4bd207cdf7c985500db1c4" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1258/cybara-v1.0.1258-linux-x64-cli"; sha256 "00cf98b4ec5b7d7b9a61b695384780b8f32730885ac527dca3304ee27a31a585" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
