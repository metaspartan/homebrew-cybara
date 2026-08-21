class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2193"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2193/cybara-v1.0.2193-darwin-arm64-cli"; sha256 "dddaff099726cd0b3a5488d4df13275fb7c0666f9d53a8b5a813ced5e5ce4e3c" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2193/cybara-v1.0.2193-darwin-x64-cli"; sha256 "b337f2eed42a3c7dca74150c8bd67291d7e7862ab0a5e54e9807fb16c6e466eb" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2193/cybara-v1.0.2193-linux-arm64-cli"; sha256 "c9a75b0ae03c979813f2991de67daec20c8f7d9cdbc121a10f6d842518aace31" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2193/cybara-v1.0.2193-linux-x64-cli"; sha256 "75260864ef06ab64fae012a4dfc36c7c47c1f516ee8347079205274edd8e9af8" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
