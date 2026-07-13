class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1449"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1449/cybara-v1.0.1449-darwin-arm64-cli"; sha256 "2ef0571c855226a98d2415933dd4d97aad283cd616319e0edd561f64a47ef76e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1449/cybara-v1.0.1449-darwin-x64-cli"; sha256 "fe5a32162375f85edaa457a249d06e1fb13b2d8b2132f16386ba8f058d792716" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1449/cybara-v1.0.1449-linux-arm64-cli"; sha256 "fd086983aee9f8dcb545493b651999a96223ea4d8fa3bcb26a859b43bfb655c9" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1449/cybara-v1.0.1449-linux-x64-cli"; sha256 "10544adfbcf68ecb90ae3aaedc6b3524e64db49678346c533974cb6541d16bdf" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
