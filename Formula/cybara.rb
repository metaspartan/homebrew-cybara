class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1617"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1617/cybara-v1.0.1617-darwin-arm64-cli"; sha256 "5f934c8831e006fa361711e4c1635a2379c0d40f2359aba382706d74321a66e1" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1617/cybara-v1.0.1617-darwin-x64-cli"; sha256 "216f3644cc6d51b2d3f7c739688c93be0ad2d5a00a6d42fed9ed2b68220646df" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1617/cybara-v1.0.1617-linux-arm64-cli"; sha256 "9e459b68725ba017d8416796b29543584488b5874095f09b6559627d64d036ed" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1617/cybara-v1.0.1617-linux-x64-cli"; sha256 "8533a47f66f47f207047f8b88505a0d6e19c5ab76eed083b98fed30b81ae0de3" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
