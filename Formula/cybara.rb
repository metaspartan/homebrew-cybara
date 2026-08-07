class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2071"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2071/cybara-v1.0.2071-darwin-arm64-cli"; sha256 "f649b2091e789c282a7b65eebe02692d7c39cc0be68ff838597e3f6bd9347075" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2071/cybara-v1.0.2071-darwin-x64-cli"; sha256 "3fee5b3e1fb9272b0f15ca0ef0615bc32156bba5242a29b50179ef2651beffb8" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2071/cybara-v1.0.2071-linux-arm64-cli"; sha256 "ca6b1e7624f2b55a3bcf071b8c56be9cee4ef828e0218f04e4040b10ef8ae133" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2071/cybara-v1.0.2071-linux-x64-cli"; sha256 "be6d64dc5830beb225e5f0b9860d2e8ea768938efc7b43c2ae008fd2bbc2a0b5" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
