class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1549"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1549/cybara-v1.0.1549-darwin-arm64-cli"; sha256 "b0c5208e57c8ca6d78b303821f2b867dce9c793d90d19550ae31064346753ec5" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1549/cybara-v1.0.1549-darwin-x64-cli"; sha256 "7ba9b6654147beeafee8149d624cad17b3b955162cce56a41a94b4973864a8f7" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1549/cybara-v1.0.1549-linux-arm64-cli"; sha256 "5ede24d5c7aa56c5d06c8cff6622cc9029237c687ac36f442e1220ecd4db39ec" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1549/cybara-v1.0.1549-linux-x64-cli"; sha256 "910129730f3a070aeeda26061a078562570ca871dff2711a9f57734a689f4df4" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
