class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1624"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1624/cybara-v1.0.1624-darwin-arm64-cli"; sha256 "665bef2be32c7c4af86145548e1088820a53833f4878b7f01f4fb25f9fc4bcfc" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1624/cybara-v1.0.1624-darwin-x64-cli"; sha256 "8b2910b5180d12c0b6d93b8ff427c0a55711e4bd08de2c2373f385ea0b4ba7eb" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1624/cybara-v1.0.1624-linux-arm64-cli"; sha256 "2fab78dc9bc4d07176cff8779a574be21080dec427a91c8cbef984b79850b9d2" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1624/cybara-v1.0.1624-linux-x64-cli"; sha256 "be2786a5a8d92ba7f8de3063f73f6b32925d96e771ebe2f2af3e12366539d167" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
