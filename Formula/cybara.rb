class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1695"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1695/cybara-v1.0.1695-darwin-arm64-cli"; sha256 "cfde019ad978e392a647bb0ba1c3134bbbdb7c34f569e9b789e77a163c5cfd6f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1695/cybara-v1.0.1695-darwin-x64-cli"; sha256 "c5b46b5b00401be226dc7a140ca35eef8259da913dd590f71efa86d0abd83736" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1695/cybara-v1.0.1695-linux-arm64-cli"; sha256 "697936166ae4497f177f0bbec9d83bd70cebc9d77fdc50b8585ca24a47f257fd" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1695/cybara-v1.0.1695-linux-x64-cli"; sha256 "bea1c8d39726cf6ece13d64cfecac53c039ad199f4add85ac01928ed589d1423" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
