class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1464"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1464/cybara-v1.0.1464-darwin-arm64-cli"; sha256 "11ab2b2ad365a82674469d4e7327283492ad5cdbfd1487a394ecc480ba4d762a" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1464/cybara-v1.0.1464-darwin-x64-cli"; sha256 "b3b182e7d0c7666d6acb9ea0a2ec336fe2a1a143352921709cd65c74c2987f3b" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1464/cybara-v1.0.1464-linux-arm64-cli"; sha256 "39236f7e27391916bb8257c8d358c45537837e89344959d0c8bf7819c7ba47b3" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1464/cybara-v1.0.1464-linux-x64-cli"; sha256 "6397155eeca7c7a637cb5d82e3c77d91f4129b792ef80607f5f806fa85d7df70" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
