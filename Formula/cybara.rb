class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1558"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1558/cybara-v1.0.1558-darwin-arm64-cli"; sha256 "19b82ad36b0b3416840dfc511aa94b084f6e2ad632bd89692ffdfa690caaefab" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1558/cybara-v1.0.1558-darwin-x64-cli"; sha256 "84ea3f1997055bed684814386a7118f091114a65090a72fae7114255768639e5" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1558/cybara-v1.0.1558-linux-arm64-cli"; sha256 "f73d97ed12e52281c1878537988191635c87bdbbe2c9abe57340a98d084da914" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1558/cybara-v1.0.1558-linux-x64-cli"; sha256 "b4863b1423dd69e4163e0c38f6ab4c6d8f53abd572444cb0dee2dec9c39adecb" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
