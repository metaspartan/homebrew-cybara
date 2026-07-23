class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1878"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1878/cybara-v1.0.1878-darwin-arm64-cli"; sha256 "6a3e1b0837b6498281c1dc906b1d6aa53d4d703455d2daf1993137b2af30b710" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1878/cybara-v1.0.1878-darwin-x64-cli"; sha256 "0832676c5833e02a70a86da6c81ee310879375229235590ade53f3f62cf2588a" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1878/cybara-v1.0.1878-linux-arm64-cli"; sha256 "e889db2d21c9f73350e1d4fd644b73e7ed87c696a431be35aab91bc55765ef92" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1878/cybara-v1.0.1878-linux-x64-cli"; sha256 "45e31ce72d18920736e3a65f323b51a283c5902b53541f66fc5fd4eab4d8c19b" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
